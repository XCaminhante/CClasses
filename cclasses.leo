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
<v t="caminhante.20221015222638.1"><vh>nodeActions</vh>
<v t="caminhante.20221015222638.2"><vh>@cmd *</vh></v>
<v t="caminhante.20221015222638.3"><vh>@cp *</vh></v>
<v t="caminhante.20221015222638.4"><vh>@files Makefile</vh></v>
<v t="caminhante.20221015222638.13"><vh>@mkdir *</vh></v>
<v t="caminhante.20221015222638.15"><vh>@mv *</vh></v>
<v t="caminhante.20221015222638.18"><vh>@rm *</vh></v>
<v t="caminhante.20221015222638.19"><vh>@rmdir /*/</vh></v>
<v t="caminhante.20221015222638.20"><vh>@run|@run .* [X]</vh></v>
</v>
</v>
<v t="knoppix.20191029161928.1"><vh>Classes C</vh>
<v t="knoppix.20191029161928.2"><vh>@path .</vh>
<v t="caminhante.20210207103732.2"><vh>/.git/</vh></v>
<v t="caminhante.20210207102455.6"><vh>/include/</vh>
<v t="caminhante.20210207102516.1"><vh>@file cclasses.h</vh></v>
<v t="caminhante.20210302085846.1"><vh>@file sl.h</vh></v>
</v>
<v t="caminhante.20210207103732.1"><vh>/t/</vh>
<v t="caminhante.20210513083852.1"><vh>@clean Makefile</vh></v>
<v t="caminhante.20210513083845.1"><vh>@file 0001.c</vh></v>
<v t="caminhante.20210513092443.1"><vh>@file 0002.c</vh></v>
<v t="caminhante.20221202160253.1"><vh>@file 0003.c</vh></v>
</v>
<v t="caminhante.20210207102455.3"><vh>@auto README.md</vh></v>
<v t="caminhante.20210513092228.1"><vh>@clean Makefile</vh></v>
<v t="caminhante.20210207105028.1"><vh>@edit .gitignore</vh></v>
<v t="caminhante.20210207102455.4"><vh>@edit LICENSE</vh></v>
<v t="caminhante.20221015223242.1"><vh>cclasses.leo</vh></v>
</v>
<v t="caminhante.20221015223740.1"><vh>Ideas</vh>
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
<v t="knoppix.20191029161928.66"><vh>natural         size (me(ListMap))</vh></v>
<v t="knoppix.20191029161928.67"><vh>objptr(ListMap) nth (me(ListMap), natural index)</vh></v>
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
<v t="knoppix.20191029161928.81"><vh>natural       size (me(Stack))</vh></v>
<v t="knoppix.20191029161928.82"><vh>objptr(Stack) nth (me(Stack), natural index)</vh></v>
</v>
<v t="knoppix.20191029161928.83"><vh>Stack tests</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="caminhante.20200313155940.1"></t>
<t tx="caminhante.20200618180759.1">@language python
import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()
path = c.getNodePath(c.p)

execute('x-terminal-emulator --working-directory="'+path+'" --new-tab')
</t>
<t tx="caminhante.20210207102455.6">@path include</t>
<t tx="caminhante.20210207103732.1">@path t</t>
<t tx="caminhante.20210207103732.2">@path .git</t>
<t tx="caminhante.20210513083852.1">@language makefile
@tabwidth 4
TARGETS := $(patsubst %.c,%.t,$(wildcard *.c))
CFLAGS := -std=gnu11 -Wall -Werror -Wno-error=unused-function -Wfatal-errors -D_GNU_SOURCE -flto -Os -I ../include/

all: $(TARGETS)
	prove --verbose .

%.t: %.c ../include/cclasses.h ../include/sl.h
	$(CC) $(CFLAGS) $&lt; -o $@

</t>
<t tx="caminhante.20210513092228.1">@language makefile
@tabwidth 4
CFLAGS := -std=gnu11 -Wall -Werror -Wno-error=unused-function -Wfatal-errors -D_GNU_SOURCE -flto -Os

all: test

test:
	make -C t/

.PHONY: test</t>
<t tx="caminhante.20221015222638.1">@language python
</t>
<t tx="caminhante.20221015222638.13">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

path = ''.join(c.p.h.split('@mkdir ')[1:])
cmd = "mkdir -p -- '" + path + "'"
g.es(c.p.h)
execute(cmd)
c.p.h = '/'+path+'/'
c.p.b = '@path ' + path
</t>
<t tx="caminhante.20221015222638.15">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

path = ''.join(c.p.h.split('@mv ')[1:])
cmd = "mv -v -- '" + path + "' ./"
g.es(c.p.h)
g.es(execute(cmd))
</t>
<t tx="caminhante.20221015222638.18">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

filename = ''.join(c.p.h.split('@rm ')[1:])
cmd = "rm -vf -- '" + filename + "'"
g.es(c.p.h)
g.es(execute(cmd))
</t>
<t tx="caminhante.20221015222638.19">import subprocess
import shutil

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

ps = c.p.parents()
for par in ps:
    break
path = c.getNodePath(par)
g.os.chdir(path)

path = ''.join(c.p.h.split('@rmdir /')[1:]).split('/')[0]
shutil.rmtree(path)
c.p.b = 'deleted'
</t>
<t tx="caminhante.20221015222638.2">import subprocess

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
<t tx="caminhante.20221015222638.20">@language python
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
novoNo.h = c.p.h + ' ['+code+']'
novoNo.b = execute(command)
c.redraw()

c.save()
w.setSelectionRange(s1,s2)
</t>
<t tx="caminhante.20221015222638.3">import subprocess

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

path = c.getNodePath(c.p)
g.os.chdir(path)

path = ''.join(c.p.h.split('@cp ')[1:])
cmd = "cp -v -- '" + path + "' ./"
g.es(c.p.h)
g.es(execute(cmd))
</t>
<t tx="caminhante.20221015222638.4">@language python
import subprocess
import re

def execute (cmd):
    return subprocess.run(cmd,shell=True,universal_newlines=True,stderr=subprocess.STDOUT,stdout=subprocess.PIPE).stdout

if c.isChanged(): c.save()

path = c.getNodePath(c.p)
g.os.chdir(path)

cpc = c.p.copy()
novoNo = cpc.insertAfter()
novoNo.h = 'make return'
novoNo.b = execute('make')
c.redraw()
</t>
<t tx="caminhante.20221015223242.1"></t>
<t tx="caminhante.20221015223740.1"></t>
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
  string      (funcptr read) (me(File), natural bytes);
  bool        (funcptr write) (me(File), string text);
  natural     (funcptr size) (me(File));
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
  // [ ListMap object -&gt; deallocates its `-&gt;key` and `-&gt;value` entries | &lt;Identity&gt; ]
  void            (funcptr destroy) (me(ListMap));
  // [ ListMap chain -&gt; number of elements in the chain | 0 ]
  natural         (funcptr size) (me(ListMap));
  // [ ListMap chain -&gt; nth object at the chain | 0 ]
  objptr(ListMap) (funcptr nth) (me(ListMap), natural index);
  // [ ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr lookup) (me(ListMap), string key);
  // [ ListMap chain and an ListMap entry has this value
  // (a value different from 0) -&gt;
    // this ListMap entry | 0 ]
  objptr(ListMap) (funcptr has) (me(ListMap), pointer value);
  // [ ListMap objects `me` and `target` -&gt; `target-&gt;next` points to `me` | 0 ]
  // WARN This function does not prevent the creation of cyclical lists!
  bool            (funcptr append) (me(ListMap), objptr(ListMap) target);
  // [ ListMap chain and an ListMap entry has this key
  // (a key different from a empty string) -&gt;
    // this ListMap entry removed from the chain, returns this ListMap entry | 0 ]
  objptr(ListMap) (funcptr unset) (iterator(ListMap) *me, string key);
  // [ ListMap chains `me` and `target` -&gt; `target`'s tail `-&gt;next` points to `me` | 0 ]
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
<t tx="knoppix.20191029161928.66">static natural ListMap_size (me(ListMap)) {
  if (me == 0) return 0;
  iterator(ListMap) p = me;
  natural count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}
</t>
<t tx="knoppix.20191029161928.67">// Nth element at list, or 0 if non-existent
static objptr(ListMap) ListMap_nth (me(ListMap), natural index) {
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
  // [ Stack object -&gt; deallocates its `-&gt;value` entry | &lt;Identity&gt; ]
  void          (funcptr destroy) (me(Stack));
  // [ Stack chain -&gt; number of elements in the chain | 0 ]
  natural       (funcptr size)    (me(Stack));
  // [ Stack chain -&gt; nth object at the chain | 0 ]
  objptr(Stack) (funcptr nth)     (me(Stack), natural index);
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
<t tx="knoppix.20191029161928.81">static natural Stack_size (me(Stack)) {
  if (me == 0) return 0;
  iterator(Stack) p = me;
  natural count = 1;
  while (p-&gt;next) {
    count++; p = p-&gt;next; }
  return count;
}</t>
<t tx="knoppix.20191029161928.82">static objptr(Stack) Stack_nth (me(Stack), natural index) {
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
</tnodes>
</leo_file>
