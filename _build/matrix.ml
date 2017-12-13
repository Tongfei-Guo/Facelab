(* matrix module from Algo course *)
(* Author: Xiayun Sun *)
(* Email: xiayun.sun@gmail.com *)
(* Date: 8-JUL-2013 *)
(* all floating number matrix *)

module Matrix : 
sig 
    val slice : 'a array array -> int * int -> int * int -> 'a array array
    val merge_matrix :
        float array array ->float array array ->float array array ->float array array ->float array array 
    val add : float array array -> float array array -> float array array
    val scale : float array array -> float -> float array array
    val subtract : float array array -> float array array -> float array array
    val mult : float array array -> float array array -> float array array
    val mult_strassen : float array array -> float array array -> float array array

end = 

struct

    let slice a (x, xlen) (y, ylen) = 
        let first_entry = Array.sub a.(x) y ylen in
        let res_matrix = Array.make xlen first_entry in
        for i = x+1 to x+xlen-1 do
            res_matrix.(i-x) <- Array.sub a.(i) y ylen
        done;
        res_matrix

    (* merge 4 matrices into one *)
    (* no dimension checking; can be applied to 2 matrix with the other two dim-0 matrices *)
    let merge_matrix c00 c10 c01 c11 = 
        let x0 = Array.length c00 and x1 = Array.length c10 
            and y0 = Array.length c00.(0) and y1 = Array.length c01.(0) in
        let x = x0 + x1 and y = y0 + y1 in
        let res_matrix = Array.make_matrix x y 0. in
        for i = 0 to x0 - 1 do
            res_matrix.(i) <- Array.append c00.(i) c01.(i)
        done;
        for i = 0 to x1 - 1 do
            res_matrix.(x0 + i) <- Array.append c10.(i) c11.(i)
        done;
        res_matrix

    (* add two matrices *)
    let add m1 m2 = 
        let x = Array.length m1 and y = Array.length m1.(0) in
        if x <> Array.length m2 || y <> Array.length m2.(0) then failwith "incompatible matrices!"
        else
           let res_matrix = Array.make_matrix x y 0. in
           for i = 0 to x-1 do
                for j = 0 to y-1 do
                    res_matrix.(i).(j) <- m1.(i).(j) +. m2.(i).(j)
                done
            done;
            res_matrix

    (* scale a matrix *)
    let scale m k = 
        let x = Array.length m and y = Array.length m.(0) in
        let res_matrix = Array.make_matrix x y 0. in
        for i = 0 to x-1 do
            for j = 0 to y-1 do
                res_matrix.(i).(j) <- m.(i).(j) *. k
            done
        done;
        res_matrix
    
    (* matrix subtraction *)
    let subtract m1 m2 = 
        add m1 (scale m2 (-1.))
    
    (* straight-forward multiplication *)
    let mult m0 m1 = 
        let x0 = Array.length m0 and y0 = Array.length m0.(0) and
            x1 = Array.length m1 and y1 = Array.length m1.(0) in
        if y0 <> x1 then failwith "incompatible matrices!"
        else
            let res_matrix = Array.make_matrix x0 y1 0. in
            for i = 0 to x0 - 1 do
                for j = 0 to y1 - 1 do
                    for k = 0 to y0 - 1 do
                        res_matrix.(i).(j) <- res_matrix.(i).(j) +. m0.(i).(k) *. m1.(k).(j)
                    done
                done
            done;
            res_matrix

    (* Strassen's Algorithm *)
    
    (* base case: direct multiplication for dim2 matrices *)
    let mult_dim2 m0 m1 = 
        let res = Array.make_matrix 2 2 0. in
        res.(0).(0) <- m0.(0).(0) *. m1.(0).(0) +. m0.(0).(1) *. m1.(1).(0);
        res.(1).(0) <- m0.(1).(0) *. m1.(0).(0) +. m0.(1).(1) *. m1.(1).(0);
        res.(0).(1) <- m0.(0).(0) *. m1.(0).(1) +. m0.(0).(1) *. m1.(1).(1);
        res.(1).(1) <- m0.(1).(0) *. m1.(0).(1) +. m0.(1).(1) *. m1.(1).(1);
        res
    
    (* util function: slice a matrix into equal 4 pieces *)
    let slice_four a =  
        let n = Array.length a / 2 in
        let a11 = slice a (0,n) (0,n) and a21 = slice a (n,n) (0,n)
        and a12 = slice a (0,n) (n,n) and a22 = slice a (n,n) (n,n) in
        a11,a12,a21,a22
    
    (* find next power of 2; assuming 64-bit machine *)
    let next_power_2 n = 
        let m = n - 1 in
        let n = m lor (m lsr 1) in
        let m = n lor (n lsr 2) in
        let n = m lor (m lsr 4) in
        let m = n lor (n lsr 8) in
        let n = m lor (m lsr 16) in
        let m = n lor (n lsr 32) in
        m + 1

    (* pad a to square dimensions *)
    let padding a n = 
        let x = Array.length a and y = Array.length a.(0) in
        let res = Array.make_matrix n n 0. in
        for i = 0 to x-1 do
            res.(i) <- Array.append a.(i) (Array.make (n-y) 0.)
        done;
        res

    (* Strassen's Algorithm *)
    
    let rec aux_mult_strassen a b = 
        let n = Array.length a in
        if n <= 2 then mult_dim2 a b
        else
           let (a11,a12,a21,a22) = slice_four a and
           (b11,b12,b21,b22) = slice_four b in
           let m1 = aux_mult_strassen (add a11 a22) (add b11 b22) and
           m2 = aux_mult_strassen (add a21 a22) b11 and
           m3 = aux_mult_strassen a11 (subtract b12 b22) and
           m4 = aux_mult_strassen a22 (subtract b21 b11) and
           m5 = aux_mult_strassen (add a11 a12) b22 and
           m6 = aux_mult_strassen (subtract a21 a11) (add b11 b12) and
           m7 = aux_mult_strassen (subtract a12 a22) (add b21 b22) in
           let c11 = add (subtract (add m1 m4) m5) m7 and
           c12 = add m3 m5 and
           c21 = add m2 m4 and
           c22 = add (add (subtract m1 m2) m3) m6 in
           merge_matrix c11 c21 c12 c22
    
    let mult_strassen a b = 
        let x0 = Array.length a and y0 = Array.length a.(0) 
        and x1 = Array.length b and y1 = Array.length b.(0) in
        if y0 <> x1 then failwith "incompatible matrices!"
        else
            let n = next_power_2 (max (max x0 y0) y1) in
            let pa = padding a n and pb = padding b n 
            in slice (aux_mult_strassen pa pb) (0,x0) (0,y1)

end
