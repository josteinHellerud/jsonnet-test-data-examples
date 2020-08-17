local userData = import 'userData.libsonnet';

{
  users: [
    {
      name: userData.generateNameFromIndex(firstNameIndex,lastNameIndex)
    }
    for firstNameIndex in std.range(0,userData.firstNamesLength()-1)
    for lastNameIndex in std.range(0,userData.lastNamesLength()-1)
  ],
}
