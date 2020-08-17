local firstNames = [
    "Emma",
    "Nora",
    "Sofie",
    "Ella",
    "Olivia",
    "Ada",
    "Sofia",
    "Sara",
    "Maja",
    "Ingrid",
    "Jakob",
    "Lucas",
    "Filip",
    "Oskar",
    "Oliver",
    "Emil",
    "Henrik",
    "William",
    "Noah",
    "Aksel",
];

local lastNames = [
  "Hansen",
  "Johansen",
  "Olsen",
  "Larsen",
  "Andersen",
  "Pedersen",
  "Nilsen",
  "Kristiansen",
  "Jensen",
  "Karlsen",
  "Johnsen",
  "Pettersen",
  "Eriksen",
  "Berg",
  "Haugen",
  "Hagen",
  "Johannessen",
  "Andreassen",
  "Jacobsen",
  "Dahl"
];

local generateNameFromIndex = (function(firstNameIndex, lastNameIndex)
  firstNames[firstNameIndex]+" "+lastNames[lastNameIndex]
);

{
  generateNameFromIndex(firstNameIndex, lastNameIndex)::
    generateNameFromIndex(firstNameIndex, lastNameIndex),
    
  firstNamesLength()::
    std.length(firstNames),
  
  lastNamesLength()::
    std.length(lastNames)
}