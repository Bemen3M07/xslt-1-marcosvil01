[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/kp0ZOOJS)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=16768126&assignment_repo_type=AssignmentRepo)
# Bemen

Bemen repo for Victor Naranjo

# Python local server

```python
python -m http.server 8000
```

# Versions
1.  [Primer commit](#100)
2.  [Agregar Country y filtrar USA](#101)
3.  [Filtrar precio y mostrar menor a 10](#102)
4.  [Filtrar precio orden ascendente](#103)
5.  [Mostar emojis verde y rojo](#104)
6.  [Choose](#105)
7.  [Cambiar for each por un apply template](#106)

## 1.0.0 
Eliminar 'hola.txt' y 'adios.txt'.

Cambiar bgcolor de la hoja de estilos 'cataleg.xslt'.


## 1.0.1 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/8bf511aeefb7fa53bd7c38792438e239dfcc8c02)
Agregar Country y seleccionar solo artistas de USA.

```html
<xsl:for-each select="catalog/cd[country='USA']">
```

## 1.0.2 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/6d05f7ad642a111520d314b947039288752f2bb3)

Ordenar por precio < 10.
```html
<xsl:for-each select="catalog/cd[price &lt; 10]">
```
Agregar Bootsrap
```html
<table border="1"> --> <table class="table table-bordered table-striped">
```
Agreagado style
```css
    body {
      text-align: center;
      background-color: #f8f9fa;
    }
    h2 {
      margin-top: 20px;
      color: #343a40;
    }
    table {
      margin-top: 20px;
      width: 80%;
      background-color: #ffffff;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    th {
      background-color: #cd4432;
      color: white;
    }
```

## 1.0.3 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/e21403361f5ea4d5ffc9537e63562d3e3dac6d16)

Ordenar por precio

```html
        <xsl:for-each select="catalog/cd[price]">
          <xsl:sort select="price" data-type="number" order="ascending"/>
```

## 1.0.4 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/31bf96cd275799fae3291392c2eff752e5fa75da)

Agregar emoji verde y rojo

```html
    <xsl:value-of select="price"/>
    <xsl:if test="price &gt; 10">
    &#128308;
    </xsl:if>
    <xsl:if test="price &lt;= 10">
    &#128994;
    </xsl:if>
```

## 1.0.5 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/844025b5b8e432f17c59d4510622c5e360a62709)

Lo mismo que el anterior pero usando 
```html 
<xsl:choose> 
```

## 1.0.6 [Commit](https://github.com/Bemen3M07/xslt-1-marcosvil01/commit/d23b2a9e0b738fa7d535851749196b3a1bc463af)

Aplicar xsl:apply-templates.
 

## Authors

- [@marcosvil01](https://www.github.com/marcosvil01)


![Logo](https://bemen3.com/wp-content/uploads/2019/12/bemen-3-secundari.png)

