
function dataTable = importTorqueData(filename, data)
    torqueData = load(filename);
    torqueSample = torqueData.Torque_values.Data;
    SamplingTime = torqueData.Torque_values.Time;
    
   
    torqueSample = reshape(torqueSample, [], 1);

    dataTable = [table(SamplingTime), data, table(torqueSample, 'VariableNames', {'Torque[Nm]'})];
    dataTable.Properties.VariableNames(1) = "sampling_time[s]";

end