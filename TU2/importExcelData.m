
function dataTable = importExcelData(filename)
  MOTOR_SPEED = readtable(filename, "Sheet","MOTOR_SPEED");
  MOTOR_SPEED.Properties.VariableNames = "MotorSpeed[rad/s]";

  DISTANCE = readtable(filename, "Sheet","DISTANCE");
  DISTANCE.Properties.VariableNames = "Distance[m]";

  VEHICLE_SPEED = readtable(filename, "Sheet","VEHICLE_SPEED");
  VEHICLE_SPEED.Properties.VariableNames = "VehicleSpeed[km/h]";

  dataTable = [MOTOR_SPEED, DISTANCE, VEHICLE_SPEED];

   
end