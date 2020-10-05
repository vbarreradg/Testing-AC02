
# Actividad 2
María Josefina Alliende y Valentina Barrera

## Clause Coverage

#### Predicados

```
1. is_hardcover
2. is_frequent_client
3. total_pages > 500 && total_pages_images >= 6
4. is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client
```

#### Claúsulas

```
A: is_hardcover
B: is_frequent_client
C: total_pages > 500
D: total_pages_images >= 6
E: is_premium_book
F: pages_of_text > 300
G: total_pages_images >= 5
H: !is_frecuent_client
```

#### Test Requirements

- TR1: A es True
- TR2: A es False
- TR3: B es True
- TR4: B es False
- TR5: C es True
- TR6: C es False
- TR7: D es True
- TR8: D es False
- TR9: E es True
- TR10: E es False
- TR11: F es True
- TR12: F es False
- TR13: G es True
- TR14: G es False
- TR15: H es True
- TR16: H es False

#### Test Cases

##### TC1: 
Cumple con TR1, TR3, TR5, TR7, TR13, TR11, TR9, TR16
```
is_hardcover = True
is_frequent_client = True
double_pages_images = 2
images = 2
# total_pages_images = 6
pages_of_text = 495
# total_pages = 501
is_premium_book = True
```
Output: 10000

##### TC2:
Cumple con TR4, TR6, TR8, TR10, TR12, TR14, TR15
```
is_hardcover = True
is_frequent_client = False
double_pages_images = 1
images = 1
# total_pages_images = 3
pages_of_text = 100
# total_pages = 103
is_premium_book = False
```

Output: 8000

##### TC3:
Cumple con TR2
```
is_hardcover = False
is_frequent_client = False
double_pages_images = 1
images = 1
# total_pages_images = 3
pages_of_text = 100
# total_pages = 103
is_premium_book = False
```

Output: 4000

|     | A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| TC1 | True  | True  | True  | True  | True  | True  | True  | False |
| TC2 | True | False | False | False | False | False | False | True  |
| TC2 | False |   -   | False | False | False | False | False | True  |

## CACC
#### Predicados

```
1. is_hardcover
2. is_frequent_client
3. total_pages > 500 && total_pages_images >= 6
4. is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client
```

#### Claúsulas

```
A: is_hardcover
B: is_frequent_client
C: total_pages > 500
D: total_pages_images >= 6
E: is_premium_book
F: pages_of_text > 300
G: total_pages_images >= 5
H: !is_frecuent_client
```

#### Test Requirements
Cada claúsula activa debe tomar los valores True y False, al igual que los predicados, pero las claúsulas menores no necesitan ser iguales.

*Notación: las mayúsculas corresponden a claúsulas activas, y las minúsculas a claúsulas inactivas*

- TR1: A es True, P1 es True
- TR2: A es False, P1 es False
- TR3: B es True, P2 es True
- TR4: B es False, P2 es False
- TR5: C es True, d es True, P3 es True
- TR6: C es False, d es True, P3 es False
- TR7: D es True, c es True, P3 es True (duplicado con 5)
- TR8: D es False, c es True, P3 es False
- TR9: E es True, f es True, h es True, P4 es True
- TR10: E es False, g es True, h es True, P4 es False
- TR11: H es True, e es True, f es True, P4 es True (duplicado con 9)
- TR12: H es False, e es True, g es True, P4 es False
- TR13: F es True, e es True, h es True y g es False, P4 es True (contiene a 11)
- TR14: F es False, e es True, h es True y g es False, P4 es False
- TR15: G es True, e es True, h es True y f es False, P4 es True
- TR16: G es False, e es True, h es True y f es False, P4 es False (duplicado con TR14)

Como se puede ver, hay algunos que están repetidos, como el TR7 con el TR5, o que contienen a otros, como el TR11 que contiene al TR9, pero se escribieron separadamente para que quede claro cuál claúsula activa es la que se busca cubrir con ese test requirement.

#### Test Cases

##### TC1:

Se cumplen TR1, TR3, TR5, TR7, TR12
```
is_hardcover = True
is_frequent_client = True
double_pages_images = 2
images = 2
# total_pages_images = 6
pages_of_text = 495
# total_pages = 501
is_premium_book = True
```

| A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| True  | True  | True  | True  | True  | True  | True  | False |

Output: 10000

##### TC2:

Se cumplen TR2, TR6, TR15
```
is_hardcover = False
is_frequent_client = False
double_pages_images = 2
images = 2
# total_pages_images = 6
pages_of_text = 294
# total_pages = 300
is_premium_book = True
```

| A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| False  |   -   | False  | True  | True  | False  | True  | True |

Output: 8000

##### TC3:

Se cumplen TR4, TR8, TR9, TR11, TR13
```
is_hardcover = True
is_frequent_client = False
double_pages_images = 1
images = 1
# total_pages_images = 3
pages_of_text = 500
# total_pages = 503
is_premium_book = True
```

| A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| True  | False  | True  | False  | True  | True  | False  | True |

Output: 16000

##### TC4:

Se cumplen TR14, TR16
```
is_hardcover = True
is_frequent_client = False
double_pages_images = 1
images = 1
# total_pages_images = 3
pages_of_text = 297
# total_pages = 300
is_premium_book = True
```

| A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| True  | False  | False  | False  | True  | False  | False  | True |

Output: 8000

##### TC5:

Se cumplen TR10
```
is_hardcover = True
is_frequent_client = False
double_pages_images = 2
images = 2
# total_pages_images = 6
pages_of_text = 301
# total_pages = 307
is_premium_book = False
```

| A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| True  | False  | False  | True  | False  | True  | True  | True |

Output: 8000