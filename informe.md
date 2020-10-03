
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

TC1: 
```
is_hardcover = True
is_frequent_client = True
total_pages = 1000
total_pages_images = 10
is_premium_book = True
pages_of_text = 500
```

TC2:
```
is_hardcover = False
is_frequent_client = False
total_pages = 100
total_pages_images = 1
is_premium_book = False
pages_of_text = 100
```

|     | A     | B     | C     | D     | E     | F     | G     | H     |
|-----|-------|-------|-------|-------|-------|-------|-------|-------|
| TC1 | True  | True  | True  | True  | True  | True  | True  | False |
| TC2 | False | False | False | False | False | False | False | True  |

## CACC
#### Predicados

```
1. is_hardcover
2. is_frequent_client
3. total_pages > 500 && total_pages_images >= 6
4. is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && !is_frecuent_client
```
