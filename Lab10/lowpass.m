function H = lowpass(f)
   H = ones(1, length(f));
   H(1) = 0.5;
   
   Rs = 50;
   L = 2.63;
   C = 4.35e-4;
   Rl = 50;

   Zl = L * 1j * 2 * pi .* f(2:end);
   Zc = 1./(C * 1j * 2 * pi .* f(2:end));
   Zc_parallel_Rl = (1./Zc + 1/Rl).^(-1);

   H(2:end) = Zc_parallel_Rl./(Rs + Zl + Zc_parallel_Rl);
end
