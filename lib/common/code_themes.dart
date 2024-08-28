import 'package:flutter/painting.dart';

class CodeThemes {
  const CodeThemes._();

  static Map<String, TextStyle> monokai(TextStyle baseStyle) {
    return {
      'root': baseStyle.copyWith(
          color: const Color(0xfff8f8f2),
          backgroundColor: const Color(0xff272822)),
      '.hljs::selection': baseStyle.copyWith(
          backgroundColor: const Color(0xff49483e),
          color: const Color(0xfff8f8f2)),
      '.hljs-::selection': baseStyle.copyWith(
          backgroundColor: const Color(0xff49483e),
          color: const Color(0xfff8f8f2)),
      'comment': baseStyle.copyWith(color: const Color(0xff75715e)),
      'tag': baseStyle.copyWith(color: const Color(0xffa59f85)),
      'subst': baseStyle.copyWith(color: const Color(0xfff8f8f2)),
      'punctuation': baseStyle.copyWith(color: const Color(0xfff8f8f2)),
      'operator': baseStyle.copyWith(color: const Color(0xfff8f8f2)),
      'bullet': baseStyle.copyWith(color: const Color(0xfff92672)),
      'variable': baseStyle.copyWith(color: const Color(0xfff92672)),
      'template-variable': baseStyle.copyWith(color: const Color(0xfff92672)),
      'selector-tag': baseStyle.copyWith(color: const Color(0xfff92672)),
      'name': baseStyle.copyWith(color: const Color(0xfff92672)),
      'deletion': baseStyle.copyWith(color: const Color(0xfff92672)),
      'symbol': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'number': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'link': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'attr': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'variable.constant_': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'literal': baseStyle.copyWith(color: const Color(0xfffd971f)),
      'title': baseStyle.copyWith(color: const Color(0xfff4bf75)),
      'class-title': baseStyle.copyWith(color: const Color(0xfff4bf75)),
      'title.class_': baseStyle.copyWith(color: const Color(0xfff4bf75)),
      'strong': baseStyle.copyWith(
          fontWeight: FontWeight.bold, color: const Color(0xfff4bf75)),
      'code': baseStyle.copyWith(color: const Color(0xffa6e22e)),
      'addition': baseStyle.copyWith(color: const Color(0xffa6e22e)),
      'title.class_.inherited__':
          baseStyle.copyWith(color: const Color(0xffa6e22e)),
      'string': baseStyle.copyWith(color: const Color(0xffa6e22e)),
      'built_in': baseStyle.copyWith(color: const Color(0xffa1efe4)),
      'doctag': baseStyle.copyWith(color: const Color(0xffa1efe4)),
      'quote': baseStyle.copyWith(color: const Color(0xffa1efe4)),
      'keyword.hljs-atrule': baseStyle.copyWith(color: const Color(0xffa1efe4)),
      'regexp': baseStyle.copyWith(color: const Color(0xffa1efe4)),
      'function-title': baseStyle.copyWith(color: const Color(0xff66d9ef)),
      'attribute': baseStyle.copyWith(color: const Color(0xff66d9ef)),
      '.ruby-property': baseStyle.copyWith(color: const Color(0xff66d9ef)),
      'title.function_': baseStyle.copyWith(color: const Color(0xff66d9ef)),
      'section': baseStyle.copyWith(color: const Color(0xff66d9ef)),
      'type': baseStyle.copyWith(color: const Color(0xffae81ff)),
      'template-tag': baseStyle.copyWith(color: const Color(0xffae81ff)),
      '.diff-meta': baseStyle.copyWith(color: const Color(0xffae81ff)),
      'keyword': baseStyle.copyWith(color: const Color(0xffae81ff)),
      'emphasis': baseStyle.copyWith(
          color: const Color(0xffae81ff), fontStyle: FontStyle.italic),
      'meta': baseStyle.copyWith(color: const Color(0xffcc6633)),
      'meta-keyword': baseStyle.copyWith(
          color: const Color(0xffcc6633), fontWeight: FontWeight.bold),
      'meta-string': baseStyle.copyWith(color: const Color(0xffcc6633)),
    };
  }
}
