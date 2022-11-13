
    <html lang="en">
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="stylesheet" href="..\..\zMarkdownStyles.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>
    0_RhinoGrassHopperPythonStudies.md
    </title>
    <link
        href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet"
    />
    <link rel="icon" href="../../resources/LogoIcon.png" type="image/x-icon"/>
    </head>
    <body><!-- Menu Bar -->
<!-- End of Menu Bar -->
    <h1 id="rhino-grasshopper-python-studies-notes">Rhino - GrassHopper - Python Studies - Notes</h1>
<p><em>ETH MAS dfab | Zac Zhuo Zhang</em></p>
<hr />
<p>Contents</p>
<ul>
<li><a href="#essential-mathematics-for-computational-design">Essential Mathematics for Computational Design</a> <!--Finished--></li>
<li><a href="#basic-gitHub-information">Basic GitHub Information</a><!--Finished--></li>
<li><a href="#the-grasshopper-primer">The Grasshopper Primer</a><!--TODO--></li>
<li><a href="#grasshopper-getting-started">Grasshopper Getting Started</a><!--Finished--></li>
<li><a href="#python-for-rhinoceros">Python for Rhinoceros</a><!--Finished--></li>
<li><a href="#what-is-rhino-python-and-python-basics">What is Rhino Python and Python Basics</a><!--Finished--></li>
<li><a href="#ghpython-component-and-python-script">GhPython Component and Python Script</a><!--Finished--></li>
<li>
<p><a href="#ghpython-exercise-snake-game">GhPython Exercise: Snake Game</a></p>
<hr />
</li>
</ul>
<h1 id="essential-mathematics-for-computational-design">Essential Mathematics for Computational Design</h1>
<blockquote>
<p><strong>LINK</strong> https://wiki.mcneel.com/rhino/home/essentialmathematics</p>
<p><strong>LINK</strong> https://developer.rhino3d.com/guides/general/essential-mathematics/</p>
<p><strong>BOOK</strong> https://www.rhino3d.com/download/rhino/6/essentialmathematics</p>
</blockquote>
<p>⚪◯◯◯◯</p>
<ul>
<li>A unit vector is a vector whose length is equal to one unit</li>
</ul>
<p><code>Csharp
      // In GH C#, unit vector can be assigned in this way:
      Vector3d a = new Vector3d ();
      a = Vector3d.XAxis;
      a = Vector3d.YAxis;
      a = Vector3d.ZAxis;
      // In addition, zero vector is in this way:
      a = Vector3d.Zero;</code></p>
<ul>
<li>Dot Product and Cross Product: The dot product of two non-zero unit vectors equals the cosine of the angle between them. The cross product takes two vectors and produces a third vector that is orthogonal to both.</li>
</ul>
<p><img alt="image" src="Rhino-GrassHopper-PythonStudies/2022-09-11-13-00-14.png" /></p>
<p><img alt="image" src="Rhino-GrassHopper-PythonStudies/2022-09-11-13-00-33.png" /></p>
<p><code>Csharp
  // In Csharp, it is like:
  Vector3d a,b;
  c= a*b; //Dot Production;
  c=a×b; //Cross Production;</code></p>
<ul>
<li>
<blockquote>
<p>Vector Mathematics: https://developer.rhino3d.com/guides/general/essential-mathematics/vector-mathematics/#15-tutorials</p>
</blockquote>
</li>
<li>
<blockquote>
<p>Parametric Curves and Surfaces: https://developer.rhino3d.com/guides/general/essential-mathematics/parametric-curves-surfaces/#31-parametric-curves</p>
</blockquote>
</li>
<li>
<p>Hermite and Bézier curves are two examples of cubic polynomial curves that are determined by four parameters. A Hermite curve is determined by two end points and two tangent vectors at these points, while a Bézier curve is defined by four points. While they differ mathematically, they share similar characteristics and limitations.</p>
</li>
<li>
<p>Curve degree is a whole positive number. Rhino allows working with any degree curve starting with 1. Degrees 1, 2, 3, and 5 are the most useful but the degrees 4 and those above 5 are not used much in the real world.</p>
</li>
</ul>
<h1 id="basic-github-information">Basic GitHub Information</h1>
<blockquote>
<p><strong>LINK</strong> https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners</p>
</blockquote>
<p>⚪⚪⚪⚪◯</p>
<ul>
<li>
<p>A quick aside: git and GitHub are not the same thing. Git is an open-source, version control tool created in 2005 by developers working on the Linux operating system; GitHub is a company founded in 2008 that makes tools which integrate with git.</p>
</li>
<li>
<p>You do not need GitHub to use git, but you cannot use GitHub without using git.</p>
</li>
<li>
<p>If you leave a clear explanation of your changes it can be extremely helpful for future programmers (perhaps future you.</p>
</li>
<li>
<p>‘A branch in Git is simply a lightweight movable pointer to one of these commits.’</p>
</li>
<li>
<p>By default, every git repository’s first branch is named <strong>master</strong> (and is typically used as the primary branch in the project).</p>
</li>
<li>
<p>As part of the tech industry’s general anti-racism work, some groups have begun to use alternate names for the default branch (we are using <strong>primary</strong> in this tutorial, for example).</p>
</li>
<li>
<p>A pull request (or PR) is a way to alert a repo's owners that you want to make some changes to their code. It allows them to review the code and make sure it looks good before putting your changes on the primary branch.</p>
</li>
<li>
<blockquote>
<p>Learn the concept of Branch System of Git: https://learngitbranching.js.org/?locale=zh_CN or https://git-school.github.io/visualizing-git .</p>
</blockquote>
</li>
<li>
<blockquote>
<p>Additional, using git with VSCode: https://youtu.be/i_23KUAEtUM .</p>
</blockquote>
</li>
</ul>
<h1 id="the-grasshopper-primer">The Grasshopper Primer</h1>
<blockquote>
<p><strong>LINK</strong> https://www.modelab.is/grasshopper-primer</p>
</blockquote>
<p>⚪◯◯◯◯</p>
<!--TODO: Page not found-->

<h1 id="grasshopper-getting-started">Grasshopper Getting Started</h1>
<p>Follow these tutorials of 3a and 3b:</p>
<blockquote>
<p><strong>LINK</strong> https://vimeopro.com/rhino/grasshopper-getting-started-by-david-rutten/video/79844992</p>
<p><strong>LINK</strong> https://gramaziokohler.github.io/teaching_materials/grasshopper</p>
</blockquote>
<p>⚪◯◯◯◯</p>
<ul>
<li>A Data Tree is essentially a list of lists.</li>
</ul>
<h1 id="python-for-rhinoceros">Python for Rhinoceros</h1>
<blockquote>
<p><strong>LINK</strong> https://developer.rhino3d.com/guides/rhinopython/</p>
</blockquote>
<p>⚪⚪⚪◯◯</p>
<ul>
<li>
<p>Python is sometimes called a scripting language or a glue language. This means python is used often to run a series of commands as a script or used to create links between two other technologies as a glue.</p>
</li>
<li>
<p>Rhino uses Python version 2.7. To be more specific Rhino uses IronPython which brings together the Python language and Microsoft’s .NET framework.</p>
</li>
</ul>
<blockquote>
<p><strong>LINK</strong> (Python Basic Syntax) https://developer.rhino3d.com/guides/rhinopython/python-statements/</p>
</blockquote>
<ul>
<li>
<p>In general, the lack of a required statement termination character simplifies script writing in Python.</p>
</li>
<li>
<p>You cannot split a statement into multiple lines in Python by pressing . Instead, use the backslash () to indicate that a statement is continued on the next line.</p>
</li>
<li>
<p>Sometimes, more than one statement may be put on a single line. In Python a semicolon ( ; ) can be used to separate multiple statements on the same line. For instance three statements can be written:
  <code>Python
  y = 3; x = 5; print(x+y)
  #Above is the same as below.
  y = 3
  x = 5
  print(x+y)</code></p>
</li>
</ul>
<blockquote>
<p><strong>LINK</strong> (Style Guide for Python Code) https://peps.python.org/pep-0008/</p>
</blockquote>
<h1 id="what-is-rhino-python-and-python-basics">What is Rhino Python and Python Basics</h1>
<blockquote>
<p><strong>LINK</strong> https://developer.rhino3d.com/guides/rhinopython/what-is-rhinopython/ &gt; <strong>LINK</strong> https://gramaziokohler.github.io/teaching_materials/python/</p>
</blockquote>
<h1 id="ghpython-component-and-python-script">GhPython Component and Python Script</h1>
<blockquote>
<p><strong>LINK</strong> https://developer.rhino3d.com/guides/rhinopython/ghpython-component/ &gt; <strong>LINK</strong> https://developer.rhino3d.com/guides/rhinopython/your-first-python-script-in-grasshopper</p>
<p><strong>LINK</strong> (Additional Video tutorials by McNeel) https://youtu.be/l4_vIRtRUaU / https://youtu.be/qSysanmDKtI / https://youtu.be/ZGIA-fBuCV8</p>
<p><strong>LINK</strong> (Additional Video tutorials) https://youtu.be/Ln-ByMyfDy8</p>
</blockquote>
<ul>
<li>
<p>Changing the name of the inputs/outputs: case sensitive; must begin with a letter or _ .</p>
</li>
<li>
<p>The input/output in python component, do NOT add any SPACE since this will create errors(C# won't have the problem).</p>
</li>
<li>
<p>Type Hints: assigning types to inputs.</p>
</li>
<li>
<p>Import modules:</p>
</li>
</ul>
<p><code>Python
  import math
  print math.pi
  print math.pow(2,2)
  print 2**8
   print (math.degrees(math.pi))
  print (math.radians(math.pi))</code></p>
<ul>
<li>Using randoms:</li>
</ul>
<p><code>Python
  import random
  random_int = random.randint(10,20)
  print random_int
  random_float = random.uniform(10,20)
  print random_float</code></p>
<ul>
<li>Accessing item(s)</li>
</ul>
<p><code>Python
  first_num = num[0] #Get the first one
  last_num = num[-1] #Get the last one
  num[0] = 10 #Change the value of an item in the list
  num.append(10) #Add an item
  num.insert(a,b) #Insert an item b at No.a</code></p>
<ul>
<li>
<p>Help and prompts: the component proved help when you input "("
  <img alt="image" src="Rhino-GrassHopper-PythonStudies/2022-09-04-14-30-05.png" /></p>
</li>
<li>
<p>Range function</p>
</li>
</ul>
<p><code>Python
  sequence = range(1) #Crate a list [0]
  sequence = range(5) #Crate a list from 0 to 4
  sequence = range(3,7) #Crate a list from 3 to 6
  oddSequence = range(1,10,2) #Crate a list [1,3,5,7,9] #range(start, stop, step)</code></p>
<ul>
<li>Slicing feature:</li>
</ul>
<p><code>Python
  print names[:2] #Print the items No1 to No2
  print names[2:] #Print items No2 to the last
  print names[1:3] #Print items No1 to No3
  newNames = names[:] #Copy a list (NOT reference)</code></p>
<ul>
<li>Nested list</li>
</ul>
<p><code>Python
  import ghpythonlib.treehelper as th
  list_of_list = [names, nums, chars]
  a = th.list_to_tree(list_of_list)</code></p>
<ul>
<li>Other list functions</li>
</ul>
<p><code>Python
  print len(myList) #Length of a list
  print sum(myList) #Sum of all items of the num list
  minNum = min(nums) #min of the num list
  maxNum = max(nums) #max of the num list
  names.pop(0) #Remove the first item of the list
  names.remove("1") #Remove a specific item
  names.reverse() #Reverse a list
  names.sort() #Sort the list numerically or alphabetically</code></p>
<ul>
<li>Outer indentation level:</li>
</ul>
<p><code>Python
  #Python uses indentation
  # Example 1
  for i in x:
      print i
      print "done!"
  # Example 2
  for i in x:
      print i
  print "done!"</code></p>
<ul>
<li>Traversal (for loop)
  <code>Python
    #Below is like 'foreach loop' in C#
    for i in list_num
        print i
    # Below is like 'for loop' in C#
    for i in range(len(list_num))
        print list_num[i]</code></li>
</ul>
<h1 id="ghpython-exercise-snake-game">GhPython Exercise Snake Game</h1>
<div class="codehilite"><pre><span></span><code>    <span class="kn">import</span> <span class="nn">scriptcontext</span> <span class="k">as</span> <span class="nn">sc</span>
    <span class="kn">import</span> <span class="nn">rhinoscriptsyntax</span> <span class="k">as</span> <span class="nn">rs</span>
    <span class="kn">import</span> <span class="nn">random</span>
    <span class="kn">import</span> <span class="nn">Rhino.Geometry</span> <span class="k">as</span> <span class="nn">rg</span>
    <span class="kn">import</span> <span class="nn">copy</span>
    <span class="kn">import</span> <span class="nn">math</span>

    <span class="k">def</span> <span class="nf">UnitizePoint</span><span class="p">(</span><span class="n">point</span><span class="p">):</span>
        <span class="n">point</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="n">point</span><span class="o">.</span><span class="n">X</span><span class="p">,</span><span class="n">point</span><span class="o">.</span><span class="n">Y</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">Unitize</span><span class="p">(</span><span class="n">point</span><span class="p">)</span>
        <span class="n">point</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="n">point</span><span class="o">.</span><span class="n">X</span><span class="p">,</span><span class="n">point</span><span class="o">.</span><span class="n">Y</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">return</span> <span class="n">point</span>

    <span class="k">def</span> <span class="nf">DirectionalMove</span> <span class="p">(</span><span class="n">Direction</span><span class="p">):</span>
        <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="n">Direction</span><span class="o">.</span><span class="n">X</span><span class="o">-</span><span class="mf">0.5</span><span class="p">,</span> <span class="n">Direction</span><span class="o">.</span><span class="n">Y</span><span class="o">-</span><span class="mf">0.5</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">Unitize</span><span class="p">(</span><span class="n">DirectionVec</span><span class="p">)</span>
        <span class="n">VecX</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">XAxis</span>

        <span class="k">if</span> <span class="n">DirectionVec</span><span class="o">.</span><span class="n">Y</span> <span class="o">&gt;=</span> <span class="mi">0</span><span class="p">:</span>
        <span class="k">if</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">3</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">3</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">5</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">5</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">7</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">7</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">else</span><span class="p">:</span>
        <span class="k">if</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">3</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">3</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">5</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">5</span><span class="o">/</span><span class="mi">8</span><span class="p">)</span> <span class="ow">and</span> <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&gt;</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">7</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>
        <span class="k">elif</span>  <span class="n">DirectionVec</span><span class="o">*</span><span class="n">VecX</span> <span class="o">&lt;=</span> <span class="n">math</span><span class="o">.</span><span class="n">cos</span><span class="p">(</span><span class="n">math</span><span class="o">.</span><span class="n">pi</span><span class="o">*</span><span class="mi">7</span><span class="o">/</span><span class="mi">8</span><span class="p">):</span>
            <span class="n">DirectionVec</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="p">(</span><span class="o">-</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>

        <span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">Unitize</span><span class="p">(</span><span class="n">DirectionVec</span><span class="p">)</span>
        <span class="k">return</span> <span class="n">DirectionVec</span>

    <span class="n">scale</span> <span class="o">=</span> <span class="mf">0.03</span>
    <span class="n">tailLength</span> <span class="o">=</span> <span class="mi">20</span>
    <span class="n">dotRange</span> <span class="o">=</span> <span class="mi">50</span>
    <span class="n">Direction</span> <span class="o">=</span> <span class="n">DirectionalMove</span><span class="p">(</span><span class="n">Direction</span><span class="p">)</span>
    <span class="n">snakeCircles</span> <span class="o">=</span> <span class="p">[]</span>
    <span class="n">tailCircles</span> <span class="o">=</span> <span class="p">[]</span>
    <span class="n">dots</span> <span class="o">=</span> <span class="p">[]</span>

    <span class="c1"># Add the variables to the sticky dict</span>
    <span class="k">if</span> <span class="s2">&quot;snakeLocations&quot;</span> <span class="ow">not</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">:</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="p">[]</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">))</span>

    <span class="k">if</span> <span class="s2">&quot;foodLocation&quot;</span> <span class="ow">not</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">:</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;foodLocation&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">)</span>

    <span class="k">if</span> <span class="s2">&quot;score&quot;</span> <span class="ow">not</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">:</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;score&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="mi">0</span>

    <span class="k">if</span> <span class="s2">&quot;Tails&quot;</span> <span class="ow">not</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">:</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="p">[]</span>

    <span class="c1">#Die</span>
    <span class="k">if</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">X</span> <span class="o">&gt;</span> <span class="n">FoodRange</span> <span class="ow">or</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">X</span> <span class="o">&lt;</span> <span class="o">-</span><span class="n">FoodRange</span> <span class="ow">or</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span> <span class="o">&gt;</span> <span class="n">FoodRange</span> <span class="ow">or</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span> <span class="o">&lt;</span> <span class="o">-</span><span class="n">FoodRange</span><span class="p">:</span>
        <span class="n">Run</span> <span class="o">=</span> <span class="kc">False</span>

    <span class="c1"># Run</span>
    <span class="k">if</span> <span class="n">Reset</span><span class="p">:</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;score&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="mi">0</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="p">[]</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="p">[]</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">0</span><span class="p">))</span>
        <span class="n">random</span><span class="o">.</span><span class="n">seed</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span>
        <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;foodLocation&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="n">random</span><span class="o">.</span><span class="n">uniform</span><span class="p">(</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="n">FoodRange</span><span class="p">),</span><span class="n">random</span><span class="o">.</span><span class="n">uniform</span><span class="p">(</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="n">FoodRange</span><span class="p">),</span><span class="mi">0</span><span class="p">)</span>

    <span class="k">elif</span> <span class="ow">not</span> <span class="n">Run</span><span class="p">:</span>
        <span class="nb">print</span> <span class="s1">&#39;NOT Running&#39;</span>

    <span class="k">else</span><span class="p">:</span>
        <span class="c1">#With trigger</span>
        <span class="k">if</span> <span class="nb">len</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">])</span> <span class="o">&lt;=</span> <span class="mi">1</span><span class="p">:</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">X</span> <span class="o">+=</span> <span class="n">Direction</span><span class="o">.</span><span class="n">X</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span> <span class="o">+=</span> <span class="n">Direction</span><span class="o">.</span><span class="n">Y</span>
        <span class="k">else</span><span class="p">:</span>
            <span class="n">tempSnake</span> <span class="o">=</span> <span class="n">copy</span><span class="o">.</span><span class="n">deepcopy</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">])</span>
            <span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">])):</span>
                <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">X</span> <span class="o">=</span> <span class="n">tempSnake</span><span class="p">[</span><span class="n">i</span><span class="o">-</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">X</span>
                <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span> <span class="o">=</span> <span class="n">tempSnake</span><span class="p">[</span><span class="n">i</span><span class="o">-</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span>

            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">]</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">copy</span><span class="o">.</span><span class="n">deepcopy</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]))</span>
            <span class="k">if</span> <span class="nb">len</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">])</span> <span class="o">&gt;=</span> <span class="n">tailLength</span><span class="p">:</span>
                <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">]</span><span class="o">.</span><span class="n">pop</span><span class="p">(</span><span class="mi">0</span><span class="p">)</span>

            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">X</span> <span class="o">=</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">X</span><span class="o">+</span><span class="n">Direction</span><span class="o">.</span><span class="n">X</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span> <span class="o">=</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span><span class="o">+</span><span class="n">Direction</span><span class="o">.</span><span class="n">Y</span>

        <span class="k">if</span> <span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="o">.</span><span class="n">DistanceTo</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="mi">0</span><span class="p">],</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;foodLocation&quot;</span><span class="p">])</span> <span class="o">&lt;</span> <span class="n">scale</span><span class="o">*</span><span class="n">FoodRange</span> <span class="p">:</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;score&quot;</span><span class="p">]</span> <span class="o">+=</span> <span class="mi">1</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="o">-</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">X</span><span class="o">-</span><span class="n">Direction</span><span class="o">.</span><span class="n">X</span><span class="p">,</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">][</span><span class="o">-</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">Y</span><span class="o">-</span><span class="n">Direction</span><span class="o">.</span><span class="n">Y</span><span class="p">,</span><span class="mi">0</span><span class="p">))</span>
            <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;foodLocation&quot;</span><span class="p">]</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="n">random</span><span class="o">.</span><span class="n">uniform</span><span class="p">(</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="n">FoodRange</span><span class="p">),</span><span class="n">random</span><span class="o">.</span><span class="n">uniform</span><span class="p">(</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="n">FoodRange</span><span class="p">),</span><span class="mi">0</span><span class="p">)</span>

    <span class="c1"># Return value</span>
    <span class="k">for</span> <span class="n">snakeLocations</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;snakeLocations&quot;</span><span class="p">]:</span>
        <span class="n">snakeCircles</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Circle</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Plane</span><span class="p">(</span><span class="n">snakeLocations</span><span class="p">,</span><span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">ZAxis</span><span class="p">),</span> <span class="mi">1</span><span class="p">))</span>
    <span class="n">Score</span> <span class="o">=</span> <span class="s1">&#39;Score: &#39;</span> <span class="o">+</span> <span class="nb">str</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;score&quot;</span><span class="p">])</span>

    <span class="n">Snake</span> <span class="o">=</span> <span class="n">snakeCircles</span>
    <span class="n">Foods</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Circle</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Plane</span><span class="p">(</span><span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;foodLocation&quot;</span><span class="p">],</span><span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">ZAxis</span><span class="p">),</span> <span class="n">scale</span><span class="o">*</span><span class="n">FoodRange</span><span class="p">)</span>
    <span class="n">Bound</span> <span class="o">=</span> <span class="n">rg</span><span class="o">.</span><span class="n">Rectangle3d</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Plane</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span><span class="mi">0</span><span class="p">),</span><span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">ZAxis</span><span class="p">),</span><span class="mi">2</span><span class="o">*</span><span class="n">FoodRange</span><span class="p">,</span><span class="mi">2</span><span class="o">*</span><span class="n">FoodRange</span><span class="p">)</span>

    <span class="k">for</span> <span class="n">Tails</span> <span class="ow">in</span> <span class="n">sc</span><span class="o">.</span><span class="n">sticky</span><span class="p">[</span><span class="s2">&quot;Tails&quot;</span><span class="p">]:</span>
        <span class="n">tailCircles</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Circle</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Plane</span><span class="p">(</span><span class="n">Tails</span><span class="p">,</span><span class="n">rg</span><span class="o">.</span><span class="n">Vector3d</span><span class="o">.</span><span class="n">ZAxis</span><span class="p">),</span> <span class="mi">1</span><span class="p">))</span>
    <span class="n">Tails</span> <span class="o">=</span> <span class="n">tailCircles</span>

    <span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="n">dotRange</span><span class="p">):</span>
        <span class="k">for</span> <span class="n">j</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="n">dotRange</span><span class="p">):</span>
            <span class="n">dots</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">rg</span><span class="o">.</span><span class="n">Point3d</span><span class="p">(</span><span class="n">FoodRange</span><span class="o">/</span><span class="n">dotRange</span><span class="o">+</span><span class="n">i</span><span class="o">*</span><span class="p">(</span><span class="mi">2</span><span class="o">*</span><span class="n">FoodRange</span><span class="o">/</span><span class="n">dotRange</span><span class="p">)</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span> <span class="n">FoodRange</span><span class="o">/</span><span class="n">dotRange</span><span class="o">+</span><span class="n">j</span><span class="o">*</span><span class="p">(</span><span class="mi">2</span><span class="o">*</span><span class="n">FoodRange</span><span class="o">/</span><span class="n">dotRange</span><span class="p">)</span><span class="o">-</span><span class="n">FoodRange</span><span class="p">,</span> <span class="mi">0</span><span class="p">))</span>

    <span class="n">Dots</span> <span class="o">=</span> <span class="n">dots</span>
</code></pre></div>

<ul>
<li>
<p><img alt="image" src="Rhino-GrassHopper-PythonStudies/2022-09-11-12-46-33.png" /></p>
</li>
<li>
<p><img alt="image" src="Rhino-GrassHopper-PythonStudies/2022-09-11_12-55-22.gif" /></p>
</li>
</ul>
    <p class="endnotes">--- Growing, Growing, Brighter Everyday ! ---</p></body>'
    </html>
    