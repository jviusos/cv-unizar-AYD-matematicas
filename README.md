# cv-unizar-AYD-matematicas

Modelo TeX de **currículum vitae para plazas de Profesor Ayudante Doctor**, específico para plazas en el Departamento de Matemáticas de la Universidad de Zaragoza (España). El modelo en pdf (estático, sin formularios) se puede encontrar en el siguiente [enlace](https://recursoshumanos.unizar.es/servicio-pdi/seleccion-de-personal-pdi/modelos-de-curriculo) de la web oficial de la Universidad.

**Importante:** Este modelo es fácilmente adaptable a otros modelos de CV de la Universidad (como por ejemplo para puestos de Profesor Interino), así como para futuras modificaciones del modelo oficial.

Se proveen dos ficheros con el CV:

- `cvunizar.cls`: clase con el formato del CV.

- `cv_matesAYD.tex`: modelo de CV específico para las plazas de Profesor Ayudante Doctor en el Departamento de Matemáticas.

Adicionalmente, se añaden dos imágenes del logo de la universidad (`unizar_logo.png`) y el archivo con la firma (`firma.png`).

En el modelo del ejemplo, los diversos bloques del CV se organizan opcionalmente en ficheros independientes para facilitar su cumplimentación.

El objetivo de este repositorio es el de proveer una clase en TeX del modelo del CV, incluyendo de forma automática:

- La firma del documento en cada página dada por un archivo imagen,

- La gestión de la numeración de los documentos justificativos de cada uno de los méritos del CV.

## Instrucciones

Únicamente se requiere compilar el documento se requiere`pdflatex` varios paquetes usuales disponibles tanto en las distribuciones MikTex y TeXLive. En particular, esta clase hace un uso extensivo de los paquetes `longtable` y `etoolbox`.

### Datos, bloques, secciones y subsecciones

La estructura del documento se divide en:

1. **Firma:** Mediante `\Firma{fichero}`, se elige la imagen que se usará como firma en todos los pies de página del CV.

2. **Portada:** Se construye automáticamente usando la información de las opciones: `\TipoPlazas`, `\Departamento` y `\Areas`. 

3. **Datos personales:** Bloque automático, la información se recopila con `\Nombre`, `\Apellidos`, ..., `\Email` (ver *.tex del ejemplo.)

4. **Situación actual (opcional):** Se construye mediante `\bloqueSituacionActual`, una vez rellenados `\Centro`, `\Actividad`, `\Categoria`.

5. **Bloques numerados:** Primer nivel de contenido de información del CV, se declaran mediante el ambiente `\begin{bloque}{TITULO DEL BLOQUE} ... \end{bloque}`.

6. **Secciones:** Anidadas en bloques, con sintaxis `\seccion{Titulo sección}{Info1 Info2 Info3}`. el segundo paréntesis construyen un bloque de subtexto con información adicional explicativa sobre los datos a rellenar en las entradas.

7. **Subsecciones:** Igual que lo anterior, con sintaxis `\subseccion{Titulo subsección}{Info1 Info2 Info3}`.

### Campos

Para el cumplimentado de entradas en los otros bloques:

- **Uso básico:** `\entrada[<NDoc1>][<NDoc2>]{ Texto }` produce una entrada con `Texto` y nº de documentos asociados `NDoc1-NDoc2` o `NDoc1` (si `<NDoc2>=vacio`). El contador de documentos continua a partir del valor de `NDoc2` (resp. `NDoc1`), asignando los números de documentos de las siguientes entradas automaticamente si no se pasan nuevos parámetros. **Importante:** El uso vacío de nº de documento como `\entrada[]{ Texto }` genera una entrada <u>sin</u> nº de documento asociado.

- Usar `\newline` para salto de linea dentro de los comandos de entrada.

- Para crear espacio vertical, se recomienda usar el comando `\entrada{}`, esto genera una linea vacía sin añadir el NºDoc. Si se quiere añadir como preámbulo a una (sub)sección, se puede usar `\preambNDoc{}`.

Se han establecido otros comandos de entrada por secciones adaptados a los datos que se piden: `\cventrada`, `\cajaSI`,`\cajaNO`, `\cvdocencia`, `\cvdescription`,`\cvlibro`, `\cvcapitulo`, `\cvarticulo`, `\cvproyecto`, `\entradaEnum` y `\entradadoble`.

- `\cventrada[<NDoc1>][<NDoc2>]{ texto1 }{ texto2 }{ texto3 }{ texto4 }` genera una entrada con texto: "**texto1**, _texto2_, texto3 (texto 4)." con o sin los números de documentos correspondientes. Muy útil para rellenar las entradas en las que haya que describir también lugares y fechas.

- `\cajaSI[<NDoc1>][<NDoc2>]{ texto }` y `\cajaNO[<NDoc1>][<NDoc2>]{ texto }` generan una entrada con `texto` añadiendo al final cajitas SI/NO marcadas con el correspondiente _check_.

- `\cvdocencia` funciona de forma similar a `cventrada`, pero combinado con `\cvdescription{texto}` de forma seguida, crea un solo bloque con una entrada con el item de docencia y otra seguida con una descripción.

- Los comandos `\cvlibro`, `\cvcapitulo`, `\cvarticulo`, `\cvproyecto`, `\cvcharla`, `\cvminicurso`, `\cvshortcomm`, `\cvposter` y `\cvestancia` están adaptados al apartado correspondiente. Se puede ver su uso en el *.tex del modelo. **Importante:** `\cvarticulo` solo admite un parámetro opcional para fijar `NDoc`.

- `\entradaEnum{texto}` crea una entrada simple enumerada con `texto`.

- `\entradadoble[<NDoc1A>][<NDoc2A>]{ textoA }[<NDoc1B>][<NDoc2B>]{ textoB }` crea una entrada doble diferenciada con los respectivos textos y números de documentos.

### Hiperenlaces

El paquete `hyperref` viene cargado por defecto, por lo que se pueden usar los comandos `\href` y `\url` directamente.

## To-Do

- Resolver errores y warnings.
- Poder completar la parte de bibliografía (artículos, libros, etc) a partir de un archivo *.bib.
