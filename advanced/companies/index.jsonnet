local companyData = import 'companyData.libsonnet';

{
  companies: [
    {
      id: companyIndex,
      name: companyData.generateCompanyNameFromIndex(companyIndex),
      orgNumber: std.substr(std.split(std.toString(std.sin(companyIndex+1)), ".")[1], 0, 11),
    },
    for companyIndex in std.range(0, companyData.companiesLength()-1)
  ],
}
