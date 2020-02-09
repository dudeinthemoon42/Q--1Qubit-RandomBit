namespace Quantum._1Qubit_RandomBit {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    
    operation RandomBit () : Unit {
        using (q = Qubit()) {
            mutable iter = 1;
            mutable maxIters = 20;
            repeat {
                // Hadamard operator - make the qubit state a superposition of 0 and 1 with probability amplitude of 1/sqrt(2)
                H(q);

                // measure the qubit and store the result
                let bit = M(q);

                // make sure the qubit is back to the 0 state
                Reset(q);

                Message($"{bit}");

                set iter += 1;
            }
            until (iter > maxIters);
		}
    }
}
