function [C, f]=lowpass(C, f, cutoff)
    for i=1:length(f)
        if abs(f(i)) > cutoff
            C(i) = 0;
        end
    end
end
