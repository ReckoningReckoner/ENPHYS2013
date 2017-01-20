function dy = errprop(f, a, da, b, db)
    [dfda, dfdb] = pder(f, a, da, b, db);
    dy = sqrt((dfda .* da).^2 + (dfdb .* db).^2);
end
