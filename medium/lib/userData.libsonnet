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

local food = [
  "pizza",
  "hamburger",
  "salad",
  "lasagna"
];

local generateNameFromIndex = (function(firstNameIndex, lastNameIndex)
  firstNames[firstNameIndex]+" "+lastNames[lastNameIndex]
);

local generateFirstNameFromIndex = (function(firstNameIndex)
  firstNames[firstNameIndex]
);

local generateLastNameFromIndex = (function(lastNameIndex)
  lastNames[lastNameIndex]
);

local generateLovesToEatFromIndex = (function(index)
  food[std.mod(index, std.length(food))]
);

{
  generateNameFromIndex(firstNameIndex, lastNameIndex)::
    generateNameFromIndex(firstNameIndex, lastNameIndex),

  generateFirstNameFromIndex(firstNameIndex)::
    generateFirstNameFromIndex(firstNameIndex),
  
  generateLastNameFromIndex(lastNameIndex)::
    generateLastNameFromIndex(lastNameIndex),

  generateLovesToEatFromIndex(index)::
    generateLovesToEatFromIndex(index),
  
  firstNamesLength()::
    std.length(firstNames),
  
  lastNamesLength()::
    std.length(lastNames)
}