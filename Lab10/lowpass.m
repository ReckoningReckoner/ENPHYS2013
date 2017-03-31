function H = lowpass(f)
   Rs=50; %[Ohm]
   L=2.63; %[H]
   C=4.35*10^(-4); %[F]
   Rl=50; %[Ohm]

   Zl = L * 1j * 2 * pi .* f;
   Zc = 1./(C * 1j * 2 * pi .* f);
   Zc_parallel_Rl = (1./Zc + 1/Rl).^(-1);

   H = Zc_parallel_Rl./(Rs + Zl + Zc_parallel_Rl);
   H(1) = 0.5;
end
