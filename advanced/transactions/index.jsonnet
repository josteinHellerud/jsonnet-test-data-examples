local userData = import 'userData.libsonnet';
local companyData = import 'companyData.libsonnet';

{
  transaction: [
    {
      reciver: {
        id: std.mod(index, (companyData.companiesLength()-1))+''+std.mod(index, (userData.firstNamesLength()-1))+''+std.mod(index, (userData.lastNamesLength()-1))
      },
      sender: {
        id: std.abs(std.mod(index, (companyData.companiesLength()-1)) - (companyData.companiesLength()-1))+''+std.mod(std.floor(std.sqrt(index+1)), (userData.firstNamesLength()-1))+''+std.mod(index, (userData.lastNamesLength()-1))
      },
      amount: std.parseInt(std.substr(std.split(std.toString(std.atan(index+1)), ".")[1], std.mod(index, 5), std.mod(index, 10)+2)),
    }
    for index in std.range(0,10000)
  ],
}