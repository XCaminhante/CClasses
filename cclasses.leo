<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="caminhante.20200313155940.1"><vh>@settings</vh>
<v t="caminhante.20200618180759.1"><vh>@command terminal-here @key=Alt-T</vh></v>
<v t="caminhante.20200619162742.1"><vh>@command open-url-here @key=Ctrl-U</vh></v>
<v t="caminhante.20200313155940.99"><vh>nodeActions</vh>
<v t="caminhante.20200604232050.1"><vh>@cmd *</vh></v>
<v t="caminhante.20200619161501.1"><vh>@download *</vh></v>
<v t="caminhante.20200619155412.1"><vh>@duck *</vh></v>
<v t="caminhante.20200927204806.1"><vh>@gcc|@gcc .* [X]</vh></v>
<v t="caminhante.20200808174417.1"><vh>@js|@js .* [X]</vh></v>
<v t="caminhante.20200912185313.1"><vh>@lua|@lua .* [X]</vh></v>
<v t="caminhante.20200619213937.1"><vh>@node|@node .* [X]</vh></v>
<v t="caminhante.20200618203115.1"><vh>@run|@run .* [X]</vh></v>
<v t="caminhante.20200619154823.1"><vh>@web *</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.1"><vh>Classes C</vh>
<v t="knoppix.20191029161928.2"><vh>@path .</vh>
<v t="caminhante.20210207103732.2"><vh>/.git/</vh></v>
<v t="caminhante.20210207102455.6"><vh>/include/</vh>
<v t="caminhante.20210207102516.1"><vh>@file cclasses.h</vh></v>
<v t="caminhante.20210302085846.1"><vh>@file stl.h</vh></v>
</v>
<v t="caminhante.20210207103732.1"><vh>/t/</vh>
<v t="caminhante.20210206083301.1"><vh>@clean 0001.c</vh>
<v t="knoppix.20191220133414.1"><vh>@gcc Dynamic Example</vh>
<v t="caminhante.20200718232148.1"><vh>Example</vh></v>
<v t="knoppix.20191220133429.1"><vh>Interfaces</vh></v>
<v t="knoppix.20191220133433.1"><vh>Implementations</vh>
<v t="caminhante.20210206110212.1"><vh>Rect</vh></v>
<v t="caminhante.20210206110222.1"><vh>Circle</vh></v>
</v>
</v>
</v>
<v t="caminhante.20210207103824.1"><vh>@clean Makefile</vh></v>
</v>
<v t="caminhante.20210207102455.3"><vh>@auto README.md</vh></v>
<v t="caminhante.20210207105028.1"><vh>@clean .gitignore</vh></v>
<v t="caminhante.20210207102455.2"><vh>cclasses.leo</vh></v>
<v t="caminhante.20210207102455.4"><vh>LICENSE</vh></v>
</v>
<v t="knoppix.20191029161928.50"><vh>File</vh>
<v t="knoppix.20191029161928.51"><vh>File interface</vh></v>
<v t="knoppix.20191029161928.52"><vh>File implementation</vh></v>
<v t="knoppix.20191029161928.53"><vh>File tests</vh></v>
<v t="knoppix.20191029161928.54"><vh>FilePath implementation</vh>
<v t="knoppix.20191029161928.55"><vh>object FilePath new (string base_path, string filename, string extension)</vh></v>
<v t="knoppix.20191029161928.56"><vh>void            destroy (me(FilePath))</vh></v>
<v t="knoppix.20191029161928.57"><vh>string          complete_path (me(FilePath))</vh></v>
<v t="knoppix.20191029161928.58"><vh>object FilePath with_extension (me(FilePath), string new_extension)</vh></v>
</v>
<v t="knoppix.20191029161928.59"><vh>FilePath interface</vh></v>
</v>
<v t="knoppix.20191029161928.60"><vh>ListMap</vh>
<v t="knoppix.20191029161928.61"><vh>ListMap interface</vh></v>
<v t="knoppix.20191029161928.62"><vh>ListMap implementation</vh>
<v t="knoppix.20191029161928.63"><vh>bool            same_key (objptr(ListMap) listmap, string key)</vh></v>
<v t="knoppix.20191029161928.64"><vh>object ListMap  new (string key, pointer value, objptr(ListMap) next)</vh></v>
<v t="knoppix.20191029161928.65"><vh>void            destroy (me(ListMap))</vh></v>
<v t="knoppix.20191029161928.66"><vh>size_t          size (me(ListMap))</vh></v>
<v t="knoppix.20191029161928.67"><vh>objptr(ListMap) nth (me(ListMap), size_t index)</vh></v>
<v t="knoppix.20191029161928.68"><vh>objptr(ListMap) lookup (me(ListMap), string key)</vh></v>
<v t="knoppix.20191029161928.69"><vh>objptr(ListMap) has (me(ListMap), pointer value)</vh></v>
<v t="knoppix.20191029161928.70"><vh>bool            append (me(ListMap), objptr(ListMap) target)</vh></v>
<v t="knoppix.20191029161928.71"><vh>objptr(ListMap) chopp_next (objptr(ListMap) head)</vh></v>
<v t="knoppix.20191029161928.72"><vh>objptr(ListMap) nip_second (objptr(ListMap) head)</vh></v>
<v t="knoppix.20191029161928.73"><vh>objptr(ListMap) unset (iterator(ListMap) *me, string key)</vh></v>
<v t="knoppix.20191029161928.74"><vh>bool            unite (me(ListMap), objptr(ListMap) target)</vh></v>
</v>
<v t="knoppix.20191029161928.75"><vh>ListMap tests</vh></v>
</v>
<v t="knoppix.20191029161928.76"><vh>Stack</vh>
<v t="knoppix.20191029161928.77"><vh>Stack interface</vh></v>
<v t="knoppix.20191029161928.78"><vh>Stack implementation</vh>
<v t="knoppix.20191029161928.79"><vh>object Stack  new (pointer value, objptr(Stack) next)</vh></v>
<v t="knoppix.20191029161928.80"><vh>void          destroy (me(Stack))</vh></v>
<v t="knoppix.20191029161928.81"><vh>size_t        size (me(Stack))</vh></v>
<v t="knoppix.20191029161928.82"><vh>objptr(Stack) nth (me(Stack), size_t index)</vh></v>
</v>
<v t="knoppix.20191029161928.83"><vh>Stack tests</vh></v>
</v>
<v t="knoppix.20191029161928.84"><vh>String</vh>
<v t="knoppix.20191029161928.85"><vh>String interface</vh></v>
<v t="knoppix.20191029161928.86"><vh>String implementation</vh>
<v t="knoppix.20191029161928.87"><vh>string new (string text)</vh></v>
<v t="knoppix.20191029161928.88"><vh>void   destroy (string me)</vh></v>
<v t="knoppix.20191029161928.89"><vh>size_t size (string me)</vh></v>
<v t="knoppix.20191029161928.90"><vh>string append (string me, string more_text)</vh></v>
<v t="knoppix.20191029161928.91"><vh>string prepend (string me, string more_text)</vh></v>
<v t="knoppix.20191029161928.92"><vh>string first (string me, size_t bytes)</vh></v>
<v t="knoppix.20191029161928.93"><vh>string last (string me, size_t bytes)</vh></v>
<v t="knoppix.20191029161928.94"><vh>string indexOf (string me, const char ch)</vh></v>
<v t="knoppix.20191029161928.95"><vh>size_t lastIndexOf (string me, const char ch)</vh></v>
<v t="knoppix.20191029161928.96"><vh>string interpolate (string me, ...)</vh></v>
</v>
<v t="knoppix.20191029161928.97"><vh>String tests</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="caminhante.20200313155940.1"></t>
<t tx="caminhante.20200313155940.99">@language python
</t>
<t tx="caminhante.20200604232050.1">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()

path = c.getNodePath(c.p)
g.os.chdir(path)

command = ''.join(c.p.h.split('@cmd ')[1:])
command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | bash\n"+command+'\nEOFEOFEOFEOFEOFEOF'
g.es(c.p.h)
c.p.b += execute(command)

c.save()
</t>
<t tx="caminhante.20200618180759.1">@language python
import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()
path = c.getNodePath(c.p)

execute('terminator --working-directory="'+path+'" --new-tab')
</t>
<t tx="caminhante.20200618203115.1">@language python
import subprocess

# def getpath (p):
    # dict = c.scanAllDirectives(p)
    # d = dict.get("path")
    # if p.isAnyAtFileNode():
        # filename = p.anyAtFileNodeName()
        # filename = g.os_path_join(d,filename)
        # if filename:
            # d = g.os_path_dirname(filename)
    # if d is None:
        # return ""
    # else:
        # return g.os_path_normpath(d)

# if c.isChanged(): c.save()

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

w = c.frame.body.wrapper
s1,s2 = w.getSelectionRange()

if s1 == s2:
    code = c.p.b
else:
    linebr = c.p.b.find('\n',s2)
    if linebr == -1: linebr = len(c.p.b)
    code = c.p.b[s1:s2]

g.es(c.p.h)

command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | bash\n"+code+'\nEOFEOFEOFEOFEOFEOF'

# if s1 == s2:
    # c.p.b += '\n' + execute(command)
# else:
    # c.p.b = c.p.b[0:linebr] + '\n' + execute(command) + c.p.b[linebr:]

cpc = c.p.copy()
novoNo = cpc.insertAsLastChild()
novoNo.h = c.p.h
novoNo.b = execute(command)
c.redraw()

c.save()
w.setSelectionRange(s1,s2)
</t>
<t tx="caminhante.20200619154823.1">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()

url = ''.join(c.p.h.split('@web ')[1:])
command = 'lynx -image_links -dump "'+url+'"'
g.es(c.p.h)
c.p.b = execute(command)

c.save()
</t>
<t tx="caminhante.20200619155412.1">import subprocess
import urllib.parse

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()

search = ''.join(c.p.h.split('@duck ')[1:])
searchenc = urllib.parse.quote(search)
command = 'lynx -dump "https://duckduckgo.com/html/?q='+searchenc+'&amp;t=seamonkey"'
g.es(c.p.h)
c.p.b = execute(command)

c.save()
</t>
<t tx="caminhante.20200619161501.1">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()

path = c.getNodePath(c.p)
g.os.chdir(path)

url = ''.join(c.p.h.split('@download ')[1:])
command = 'wget --no-config --continue --no-verbose --adjust-extension --tries=3 --content-on-error "'+url+'"'
g.es(c.p.h)
c.p.b += execute(command)

c.save()
</t>
<t tx="caminhante.20200619162742.1">@language python
# if c.isChanged(): c.save()

w = c.frame.body.wrapper
b = c.p.b
i,j = w.getSelectionRange()

selecao = b[i:j]

cpc = c.p.copy()
novoNo = cpc.insertAsLastChild()
c.setHeadString(novoNo, '@web '+selecao)
c.selectPosition(novoNo)
c.redraw()
</t>
<t tx="caminhante.20200619213937.1">import subprocess
import re

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

code = re.sub(r'^#|\n+#', '\n///', g.getScript(c,c.p))

g.es(c.p.h)

command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | node\n"+code+'\nEOFEOFEOFEOFEOFEOF'

c.p.b += '\n' + execute(command)
</t>
<t tx="caminhante.20200718232148.1">// type geometry interface {
    // area() float64
    // perim() float64
// }


// type rect struct {
    // width, height float64
// }

// func (r rect) area() float64 {
    // return r.width * r.height
// }

// func (r rect) perim() float64 {
    // return 2*r.width + 2*r.height
// }


// type circle struct {
    // radius float64
// }

// func (c circle) area() float64 {
    // return math.Pi * c.radius * c.radius
// }

// func (c circle) perim() float64 {
    // return 2 * math.Pi * c.radius
// }

//

</t>
<t tx="caminhante.20200808174417.1">import subprocess
import re

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

code = re.sub(r'^#|\n+#', '\n///', g.getScript(c,c.p))

g.es(c.p.h)

command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | js\n"+code+'\nEOFEOFEOFEOFEOFEOF'

c.p.b += '\n' + execute(command)
</t>
<t tx="caminhante.20200912185313.1">import subprocess
import re

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

code = re.sub(r'^#|\n+#', '\n---', g.getScript(c,c.p))

g.es(c.p.h)

command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | lua\n"+code+'\nEOFEOFEOFEOFEOFEOF'

c.p.b += '\n' + execute(command)
</t>
<t tx="caminhante.20200927204806.1">import subprocess
import re

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

code = re.sub(r'^#@|\n+#@', '\n///', g.getScript(c,c.p))
args = ''.join(c.p.h.split('@gcc ')[1:])

g.es(c.p.h)

command = "cat &lt;&lt;'EOFEOFEOFEOFEOFEOF' | gcc -xc - -Wall -Werror -std=gnu11 -c -o /dev/null \n"+code+'\nEOFEOFEOFEOFEOFEOF'

c.p.b += '\n' + execute(command)
# g.es(command)
</t>
<t tx="caminhante.20210206083301.1">@others
int main () {
  object $Class a = new(SimpleRect);
  object $Class b = new(SimpleCircle);
  double c = 0;
  send(a, new_message(Rect,new, .width=2.0, .height=3.0));
  send(b, new_message(Circle,new, .radius=3.0));
  send(a, new_message(Geometry,area, ._return=&amp;c));
  printf("%g\n", c);
  send(b, new_message(Geometry,area, ._return=&amp;c));
  printf("%g\n", c);
  send(a, new_message(Geometry,perim, ._return=&amp;c));
  printf("%g\n", c);
  send(b, new_message(Geometry,perim, ._return=&amp;c));
  printf("%g\n", c);
  return 0;
}</t>
<t tx="caminhante.20210206110212.1">struct rect {
  double w;
  double h;
};
define_class(SimpleRect) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Rect)) { return true; }
  if (is_method(Rect,new)) {
    struct rect *r = allocate(struct rect);
    r-&gt;w = message_of(Rect,new)-&gt;width;
    r-&gt;h = message_of(Rect,new)-&gt;height;
    mutable(struct rect, me-&gt;_obj) = r;
    return true;
  }
  if (me-&gt;_obj != NULL) {
    double *ret = (double*)msg-&gt;_return;
    objptr(rect) r = (objptr(rect))me-&gt;_obj;
    if (is_method(Geometry,area)) {
      *ret = r-&gt;w * r-&gt;h;
      return true;
    }
    if (is_method(Geometry,perim)) {
      *ret = r-&gt;w*2 + r-&gt;h*2;
      return true;
    }
  }
  return false;
}

//

</t>
<t tx="caminhante.20210206110222.1">struct circle {
  double r;
};
define_class(SimpleCircle) {
  if (querying_type(Geometry)) { return true; }
  if (querying_type(Circle)) { return true; }
  if (is_method(Circle,new)) {
    struct circle *c = allocate(struct circle);
    c-&gt;r = message_of(Circle,new)-&gt;radius;
    mutable(struct circle, me-&gt;_obj) = c;
    return true;
  }
  if (me-&gt;_obj != NULL) {
    double *ret = (double*)msg-&gt;_return;
    objptr(circle) c = (objptr(circle))me-&gt;_obj;
    if (is_method(Geometry,area)) {
      *ret = 3.14 * c-&gt;r * c-&gt;r;
      return true;
    }
    if (is_method(Geometry,perim)) {
      *ret = 2.0 * 3.14 * c-&gt;r;
      return true;
    }
  }
  return false;
}

//

</t>
<t tx="caminhante.20210207102455.2"></t>
<t tx="caminhante.20210207102455.4"></t>
<t tx="caminhante.20210207102455.6">@path include</t>
<t tx="caminhante.20210207103732.1">@path t</t>
<t tx="caminhante.20210207103732.2">@path .git</t>
<t tx="caminhante.20210207103824.1">@tabwidth 5
CFLAGS := -Wall -Werror -std=gnu11 -I../include/
TARGETS := $(shell ls * | grep -v Makefile | grep -v '.t' | sed -r 's/(.*)/\1.t/g')

all: $(TARGETS)

%.c.t: %.c
	gcc $&lt; $(CFLAGS) -o $@</t>
<t tx="caminhante.20210207105028.1">@nocolor
t/*.t</t>
<t tx="knoppix.20191029161928.1">@language c
@tabwidth -2</t>
<t tx="knoppix.20191029161928.2"></t>
<t tx="knoppix.20191029161928.50"></t>
<t tx="knoppix.20191029161928.51">enum $File$AccessMode {
  $File$read = O_RDONLY,
  $File$write = O_WRONLY,
  $File$write_read = O_RDWR,
  $File$append = O_APPEND,
  $File$create = O_CREAT,
  $File$truncate = O_TRUNC,
};

interface $File {
  object File (funcptr new) (objptr(FilePath) filepath, $File$AccessMode modes);
  string      (funcptr read) (me(File), size_t bytes);
  bool        (funcptr write) (me(File), string text);
  size_t      (funcptr size) (me(File));
};

struct File {
  object FilePath filepath;
  int fileno;
  bool is_open;
  struct stat filestats;
};</t>
<t tx="knoppix.20191029161928.52"></t>
<t tx="knoppix.20191029161928.53">static void File_tests () {}</t>
<t tx="knoppix.20191029161928.54">@others

class $FilePath FilePath = {
  FilePath_new,
  FilePath_destroy,
  FilePath_complete_path,
  FilePath_with_extension
};</t>
<t tx="knoppix.20191029161928.55">static object FilePath FilePath_new (string base_path, string filename, string extension) {
  return (object FilePath){base_path, filename, extension};
}</t>
<t tx="knoppix.20191029161928.56">static void FilePath_destroy (me(FilePath)) {
  if (me == 0) return;
  String.destroy(me-&gt;base_path);
  String.destroy(me-&gt;filename);
  String.destroy(me-&gt;extension);
}</t>
<t tx="knoppix.20191029161928.57">static string FilePath_complete_path (me(FilePath)) {
  if (me == 0) return 0;
  string a = String.append(me-&gt;base_path, me-&gt;filename);
  string b = String.append(a,me-&gt;extension);
  String.destroy(a);
  return b;
}</t>
<t tx="knoppix.20191029161928.58">static object FilePath FilePath_with_extension (me(FilePath), string new_extension) {
  if (me == 0) return (object FilePath){0};
  return FilePath_new(me-&gt;base_path,me-&gt;filename,new_extension);
}</t>
<t tx="knoppix.20191029161928.59">interface $FilePath {
  object FilePath (funcptr new) (string base_path, string filename, string extension);
  void            (funcptr destroy) (me(FilePath));
  string          (funcptr complete_path) (me(FilePath));
  object FilePath (funcptr with_extension) (me(FilePath), string new_extension);
};

struct FilePath {
  string base_path;
  string filename;
  string extension;
};

extern class $File File;</t>
<t tx="knoppix.20191029161928.60"></t>
<t tx="knoppix.20191029161928.61">interface $ListMap {
  // WARN This function does not prevent the creation of cyclical lists!
  object ListMap  (funcptr new) (string key, pointer value, objptr(ListMap) next);
  // [ likely valid ListMap object -&gt; deallocates its `-&gt;key` and `-&gt;value` entries | &lt;Identity&gt; ]
  void            (funcptr destroy) (me(ListMap));
  // [ likely valid ListMap chain -&gt; number of elements in the chain | 0 ]
  size_t          (funcptr size) (me(ListMap));
  // [ likely valid ListMap chain -&gt; nth object at the chain | 0 ]
  objptr(ListMap) (funcptr nth) (me(ListMap), size_t index);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr lookup) (me(ListMap), string key);
  // [ likely valid ListMap chain and an ListMap entry has this value
  // (a value different from 0) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr has) (me(ListMap), pointer value);
  // [ likely valid ListMap objects `me` and `target` -&gt; `target-&gt;next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr append) (me(ListMap), objptr(ListMap) target);
  // [ likely valid ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry removed from the chain, returns this ListMap entry | 0 ]
  objptr(ListMap) (funcptr unset) (iterator(ListMap) *me, string key);
  // [ likely valid ListMap chains `me` and `target` -&gt; `target`'s tail `-&gt;next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr unite) (me(ListMap), objptr(ListMap) target);
};

struct ListMap {
  string key;
  pointer value;
  objptr(ListMap) next;
};

extern class $ListMap ListMap;
</t>
<t tx="knoppix.20191029161928.62">@others

class $ListMap ListMap = {
  ListMap_new,
  ListMap_destroy,
  ListMap_size,
  ListMap_nth,
  ListMap_lookup,
  ListMap_has,
  ListMap_append,
  ListMap_unset,
  ListMap_unite
};
</t>
<t tx="knoppix.20191029161928.63">static bool same_key (objptr(ListMap) listmap, string key) {
  return strcmp(listmap-&gt;key,key) == 0;
}
</t>
<t tx="knoppix.20191029161928.64">// WARN This function does not prevent the creation of cyclical lists!
static object ListMap ListMap_new (string key, pointer value, objptr(ListMap) next) {
  return (object ListMap){ .key=key, .value=value, .next=next };
}
</t>
<t tx="knoppix.20191029161928.65">static void ListMap_destroy (me(ListMap)) {
  if (me == 0) return;
  if (me-&gt;key) free((char*)me-&gt;key);
  if (me-&gt;value) free((void*)me-&gt;value);
}
</t>
<t tx="knoppix.20191029161928.66">static size_t ListMap_size (me(ListMap)) {
  if (me == 0) return 0;
  iterator(ListMap) p = me;
  size_t count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}
</t>
<t tx="knoppix.20191029161928.67">// Nth element at list, or 0 if non-existent
static objptr(ListMap) ListMap_nth (me(ListMap), size_t index) {
  if (index &lt; 1) return 0;
  iterator(ListMap) p = me;
  while (p &amp;&amp; --index) {
    p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.68">// Finds a element by its key
static objptr(ListMap) ListMap_lookup (me(ListMap), string key) {
  if (me == 0) return 0;
  if (key == 0) return 0;
  iterator(ListMap) p = me;
  while (p-&gt;next) {
    if (same_key(p, key)) return p;
    p = p-&gt;next; }
  return 0;
}
</t>
<t tx="knoppix.20191029161928.69">// Finds a element by its value
static objptr(ListMap) ListMap_has (me(ListMap), pointer value) {
  if (me == 0) return 0;
  if (value == 0) return 0;
  iterator(ListMap) p = me;
  while (p-&gt;next) {
    if (p-&gt;value == value) return p;
    p = p-&gt;next; }
  return 0;
}
</t>
<t tx="knoppix.20191029161928.70">// `target` becomes the new ListMap head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_append (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  if (me == target) return false;
  if (target-&gt;next != 0) return false;
  *( (iterator(ListMap)*) &amp;target-&gt;next) = me;
  return true;
}
</t>
<t tx="knoppix.20191029161928.71">// [ head -&gt; p2 := head with .next=0, returns p2 ]
static objptr(ListMap) chopp_next (objptr(ListMap) head) {
  iterator(ListMap) p = head-&gt;next;
  *( (iterator(ListMap)*) &amp;head-&gt;next) = 0;
  return p;
}
</t>
<t tx="knoppix.20191029161928.72">// [ head -&gt; p2 -&gt; p3 := head -&gt; p3, returns p2 with .next=0 ]
static objptr(ListMap) nip_second (objptr(ListMap) head) {
  iterator(ListMap) p2 = head-&gt;next;
  *( (iterator(ListMap)*) &amp;head-&gt;next) = chopp_next(p2);
  return p2;
}
</t>
<t tx="knoppix.20191029161928.73">// For a ListMap list with `key` present:
  // removes the corresponding element, rewiring the list
  // returns the removed element
// Otherwise, returns 0
static objptr(ListMap) ListMap_unset (iterator(ListMap) *me, string key) {
  iterator(ListMap) p = *me; iterator(ListMap) lp = 0;
  while (p) {
    if (same_key(p,key)) {
      // last element case:
      if (p-&gt;next == 0) return chopp_next(lp);
      // common case:
      if (lp) return nip_second(lp);
      // first element case:
      *me = chopp_next(p); return p; }
    lp = p; p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.74">// Concatenates `target` and `me`, `target` becomes the new head
// WARN This function does not prevent the creation of cyclical lists!
static bool ListMap_unite (me(ListMap), objptr(ListMap) target) {
  if (me == 0) return false;
  if (target == 0) return false;
  iterator(ListMap) p = target;
  while (p-&gt;next) p = p-&gt;next;
  return ListMap_append(me,p);
}
</t>
<t tx="knoppix.20191029161928.75">static void print_listmap (objptr(ListMap) l) {
  iterator(ListMap) p = l;
  puts("* *");
  while (p) {
    printf("%s: %p\n",p-&gt;key,p-&gt;value); p = p-&gt;next; }
  puts("* *");
}

static void ListMap_tests () {
  object ListMap l1 = ListMap.new("null",0,0);
  object ListMap l2 = ListMap.new("abc",(pointer)1,&amp;l1);
  object ListMap l3 = ListMap.new("def",(pointer)2,&amp;l2);
  object ListMap l4 = ListMap.new("ghij",(pointer)3,&amp;l3);
  object ListMap L1 = ListMap.new("klm",(pointer)4,0);
  object ListMap L2 = ListMap.new("nop",(pointer)5,&amp;L1);
  iterator(ListMap) head = &amp;l4;
  print_listmap(&amp;l4);
  printf("l4 size: %d\n", ListMap.size(&amp;l4));
  printf("l2 value: %p\n", ListMap.nth(&amp;l4,3)-&gt;value);
  printf("'def' key value: %p\n", ListMap.lookup(&amp;l4,"def")-&gt;value);
  printf("have we a 2 value? %d\n", ListMap.has(&amp;l4,(pointer)2) == &amp;l3);
  printf("unset l4: %p %p\n", ListMap.unset(&amp;head,"ghij"), &amp;l4 );
  print_listmap(head);
  printf("append l4 back? %d\n", ListMap.append(head,&amp;l4));
  print_listmap(&amp;l4);
  printf("unite L2 and l4? %d\n", ListMap.unite(&amp;l4,&amp;L2));
  print_listmap(&amp;L2);
  printf("L2 size: %d\n", ListMap.size(&amp;L2));
}
</t>
<t tx="knoppix.20191029161928.76"></t>
<t tx="knoppix.20191029161928.77">interface $Stack {
  object Stack  (funcptr new)     (pointer data, objptr(Stack) next);
  // [ likely valid Stack object -&gt; deallocates its `-&gt;value` entry | &lt;Identity&gt; ]
  void          (funcptr destroy) (me(Stack));
  // [ likely valid Stack chain -&gt; number of elements in the chain | 0 ]
  size_t        (funcptr size)    (me(Stack));
  // [ likely valid Stack chain -&gt; nth object at the chain | 0 ]
  objptr(Stack) (funcptr nth)     (me(Stack), size_t index);
};

struct Stack {
  pointer value;
  objptr(Stack) next;
};

extern class $Stack Stack;
</t>
<t tx="knoppix.20191029161928.78">@others
class $Stack Stack = {
  Stack_new,
  Stack_destroy,
  Stack_size,
  Stack_nth
};
</t>
<t tx="knoppix.20191029161928.79">static object Stack Stack_new (pointer value, objptr(Stack) next) {
  return (object Stack){value, next};
}</t>
<t tx="knoppix.20191029161928.80">static void Stack_destroy (me(Stack)) {
  if (me == 0) return;
  if (me-&gt;value) free((void*)me-&gt;value);
}</t>
<t tx="knoppix.20191029161928.81">static size_t Stack_size (me(Stack)) {
  if (me == 0) return 0;
  iterator(Stack) p = me;
  size_t count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}</t>
<t tx="knoppix.20191029161928.82">static objptr(Stack) Stack_nth (me(Stack), size_t index) {
  if (index &lt; 1) return 0;
  iterator(Stack) p = me;
  while (p &amp;&amp; --index) {
    p = p-&gt;next; }
  return p;
}
</t>
<t tx="knoppix.20191029161928.83">static void Stack_tests () {
  object Stack s1 = Stack.new((pointer)1, 0);
  object Stack s2 = Stack.new((pointer)2, &amp;s1);
  printf("%d\n",Stack.size(&amp;s1));
  printf("%d\n",Stack.size(&amp;s2));
  printf("%p %p %p\n",Stack.nth(&amp;s2,2), &amp;s2, &amp;s1);
  printf("%p %p %p\n",Stack.nth(&amp;s2,1), &amp;s2, &amp;s1);
  printf("%p %p %p\n",Stack.nth(&amp;s2,0), &amp;s2, &amp;s1);
}</t>
<t tx="knoppix.20191029161928.84"></t>
<t tx="knoppix.20191029161928.85">interface $String {
  // [ likely valid string `text` -&gt; copy of `text` | 0 ]
  string (funcptr new) (string text);
  // [ `me` != 0 -&gt; deallocates `me` | &lt;Identity&gt; ]
  void   (funcptr destroy) (string me);
  // [ likely valid string `me` -&gt; number of bytes in `me` | 0 ]
  size_t (funcptr size) (string me);
  // [ likely valid string `me` and `more_text` -&gt;
    // new string with `more_text` concatenated at the end of `me` ]
  string (funcptr append) (string me, string more_text);
  // [ likely valid string `me` and `more_text` -&gt;
    // new string with `more_text` concatenated at the start of `me` ]
  string (funcptr prepend) (string me, string more_text);
  // [ likely valid string `me` and `bytes` &gt; 1 -&gt; new string with a copy of the first `bytes` of `me`'s chars on it ]
  string (funcptr first) (string me, size_t bytes);
  // [ likely valid string `me` and `bytes` &gt; 1 -&gt; new string with a copy of the last `bytes` of `me`'s chars on it ]
  string (funcptr last) (string me, size_t bytes);
  // [ likely valid string `me` and `ch` -&gt; first position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr indexOf) (string me, const char ch);
  // [ likely valid string `me` and `ch` -&gt; last position at `me` where occurs a char with the same value of `ch` ]
  size_t (funcptr lastIndexOf) (string me, const char ch);
  // [ likely valid string `me` and variadic sprintf-like arguments -&gt; a new string with sprintf-like arguments interpolated on it ]
  // Example: String.interpolate("%d %d\n",1,2) -&gt; "1 2\n"
  string (funcptr interpolate) (string me, ...);
};

extern class $String String;
</t>
<t tx="knoppix.20191029161928.86">@others

class $String String = {
  String_new,
  String_destroy,
  String_size,
  String_append,
  String_prepend,
  String_first,
  String_last,
  String_indexOf,
  String_lastIndexOf,
  String_interpolate,
};
</t>
<t tx="knoppix.20191029161928.87">static string String_new (string text) {
  if (text == 0) return 0;
  size_t txtlen = strlen(text);
  char *newstr = malloc(txtlen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,text,txtlen);
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.88">static void String_destroy (string me) {
  if (me != 0) free((char*)me);
}
</t>
<t tx="knoppix.20191029161928.89">static size_t String_size (string me) {
  if (me == 0) return 0;
  return strlen(me);
}
</t>
<t tx="knoppix.20191029161928.90">static string String_append (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  size_t melen = strlen(me), morelen = strlen(more_text);
  char *newstr = malloc(melen+morelen+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,melen);
  strncpy(newstr+melen,more_text,morelen);
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.91">static string String_prepend (string me, string more_text) {
  if (me == 0) return 0;
  if (more_text == 0) return 0;
  return String_append(more_text,me);
}
</t>
<t tx="knoppix.20191029161928.92">static string String_first (string me, size_t bytes) {
  if (me == 0) return 0;
  if (bytes &lt; 1) return 0;
  size_t melen = strlen(me);
  if (bytes &gt;= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.93">static string String_last (string me, size_t bytes) {
  if (me == 0) return 0;
  if (bytes &lt; 1) return 0;
  size_t melen = strlen(me);
  if (bytes &gt;= melen) return String_new(me);
  char *newstr = malloc(bytes+1);
  if (newstr == 0) return 0;
  strncpy(newstr,me+melen-bytes,bytes);
  newstr[bytes] = '\0';
  return newstr;
}
</t>
<t tx="knoppix.20191029161928.94">static size_t String_indexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
</t>
<t tx="knoppix.20191029161928.95">static size_t String_lastIndexOf (string me, const char ch) {
  if (me == 0) return 0;
  char *pos = strrchr(me,ch);
  if (pos == 0) return 0;
  return (size_t) (pos-me);
}
</t>
<t tx="knoppix.20191029161928.96">static string String_interpolate (string me, ...) {
  if (me == 0) return 0;
  va_list args;
  va_start(args,me);
  size_t needed = vsnprintf(0,0,me,args);
  if (needed == 0) return 0;
  char *newbuf = malloc(needed+1);
  if (newbuf == 0) return 0;
  va_start(args,me);
  vsprintf(newbuf,me,args);
  va_end(args);
  return newbuf;
}
</t>
<t tx="knoppix.20191029161928.97">static void String_tests () {
  string a = String.interpolate("* %d %s",1,"teste");
  puts(a);
  printf("%d\n",String.indexOf(a,'s'));
  printf("%d\n",String.lastIndexOf(a,'t'));
  string b = String.first(a,3);
  puts(b);
  string c = String.last(a,3);
  puts(c);
  string d = String.prepend(b,c);
  puts(d);
}
</t>
<t tx="knoppix.20191220133414.1">#include "cclasses.h"
@others</t>
<t tx="knoppix.20191220133429.1">#define Type$Geometry(_) \
  _(area) \
  _(perim)
define_type(Geometry);

#define Geometry$area(_)
define_message(Geometry,area);

#define Geometry$perim(_)
define_message(Geometry,perim);

//

#define Type$Rect(_) \
  _(new)
define_type(Rect);

#define Rect$new(_) \
  _(double,width) \
  _(double,height)
define_message(Rect,new);

//

#define Type$Circle(_) \
  _(new)
define_type(Circle);

#define Circle$new(_) \
  _(double,radius)
define_message(Circle,new);

//

</t>
<t tx="knoppix.20191220133433.1">@others</t>
</tnodes>
</leo_file>
