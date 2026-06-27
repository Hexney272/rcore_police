Utils.Handsup = Utils.Handsup or {}


Utils.Handsup.Exit = function(plyPed)
    if not plyPed then
        return
    end

    if IsPedBeingStunned(plyPed, 0) then
        return
    end

    if deathFlag then
        return
    end
    
    ClearPedTasksImmediately(plyPed)
end