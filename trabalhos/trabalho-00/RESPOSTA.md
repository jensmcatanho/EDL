
# Udacity

**Udacity** é uma plataforma de cursos online cujo objetivo é ampliar o acesso a uma educação superior para que estudantes de todo o mundo evoluam em conhecimento e em suas carreiras. Nas palavras dos próprios autores..
> We believe that higher education is a basic human right.

A plataforma conta com a participação de diversas empresas de grande porte como [Facebok](https://www.facebook.com/), [Google](http://google.com.br/), [Twitter](https://twitter.com/), [nVidia](http://nvidia.com/), [AutoDesk](http://www.autodesk.com/) e até do próprio [GitHub](https://github.com/) produzindo conteúdo para diversos cursos dos níveis mais básicos aos mais avançados.

Um dos exemplos disso, são os cursos [How to Use Git and GitHub](https://www.udacity.com/courses/ud775) e o [Linux Command Line Basics](https://www.udacity.com/courses/ud595) que abordam os conceitos principais do Git e do GitHub e comandos simples para começar a se acostumar com o terminal do Linux respectivamente. Ambos não assumem nenhuma experiência prévia e servem como uma ótima introdução para ambos assuntos, inclusive utilizados por mim mesmo.

Além de cursos básicos e introdutórios, o Udacity também dispõe de cursos mais específicos e avançados como é o caso do [Intro to Parallel Programming](https://www.udacity.com/courses/cs344) oferecido pela nVidia e que, apesar do nome, requer um bom background em programação e cobre um vasto número de tópicos. O curso utiliza a API **CUDA** desenvolvida pela própria nVidia. Abaixo segue o exemplo de um código de um _kernel_ feito ao longo do curso.
```
__global__ void rgba_to_greyscale(const uchar4* const rgbaImage, unsigned char* const greyImage, int numRows, int numCols) {
    int col = threadIdx.x;
    int row = blockIdx.x;
    int idx = col + row * numCols;
    greyImage[idx] = rgbaImage[idx].x * 0.299f + rgbaImage[idx].y * 0.587f + rgbaImage[idx].z * 0.114f;
}
```

Outro curso mais avançado oferecido pelo Udacity é o [Interactive 3D Graphics](https://www.udacity.com/course/cs291) oferecido pela Autodesk. O curso disponibiliza conceitos gerais em computação gráfica como transformações lineares, cores, materiais e shaders, utilizando **WebGL** e a biblioteca **THREE.js** com uma didática excelente que permite inclusive rodar os programas e as demonstrações para visualização no próprio navegador. Segue abaixo o exemplo de um código feito ao longo de curso e [um exemplo de uma das imagens produzidas](https://www.dropbox.com/s/5e00dfv8f6c13bu/teapot.png?dl=0) que mostra um teapot (objeto comumente renderizado em computação gráfica) com um toon shading.

```
function PolygonGeometry(sides, location, radius) {
	var geo = new THREE.Geometry();
	
	// Generates vertices
	for ( var pt = 0 ; pt < sides; pt++ ) {
		var angle = (Math.PI/2) + (pt / sides) * 2 * Math.PI;

		var x = Math.cos(angle)*radius + location.x;
		var y = Math.sin(angle)*radius + location.y;
		
		geo.vertices.push( new THREE.Vector3( x, y, 0.0 ) );
	}
  
  // Generates faces
	for ( var face = 0 ; face < sides-2; face++ )	{
		geo.faces.push( new THREE.Face3( 0, face+1, face+2 ) );
	}	
	
	return geo;
}
```

Concluindo, o Udacity é uma plataforma ótima para pessoas em qualquer nível de aprendizado e com muitas opções para todos os gostos.
