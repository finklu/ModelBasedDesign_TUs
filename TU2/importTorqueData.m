
function addedData = importTorqueData(filename, data)
    torqueData = load(filename);
    torqueSample = torqueData.Torque_values.Data;
    SamplingTime = torqueData.Torque_values.Time;
    
   
    torqueSample = reshape(torqueSample, [], 1);

    addedData = [table(SamplingTime), data, table(torqueSample, 'VariableNames', {'Torque[Nm]'})];
    addedData.Properties.VariableNames(1) = "sampling_time[s]";

end