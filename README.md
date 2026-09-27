# Apple Design Skills

Набор инструкций для Claude Code, веб- и продуктовых дизайнеров: Apple Human Interface Guidelines, UX, дизайн-системы, accessibility, SEO и production-ready frontend.

> Это неофициальный учебный материал и не является продуктом Apple. Используйте официальные ссылки Apple как источник истины.

## Быстрый старт

Скопируйте skill в проект:

```bash
mkdir -p .claude/skills/apple-design
curl -fsSL https://raw.githubusercontent.com/rahmaglobalnur-boop/apple-design-skills/main/SKILL.md \\
  -o .claude/skills/apple-design/SKILL.md
```

Или клонируйте репозиторий:

```bash
git clone https://github.com/rahmaglobalnur-boop/apple-design-skills.git
cp apple-design-skills/SKILL.md .claude/skills/apple-design/SKILL.md
```

После установки попросите Claude Code:

```text
Прочи��ай .claude/skills/apple-design/SKILL.md и проведи аудит текущего продукта.
Сначала изучи код и существующую дизайн-систему, затем предложи план без внесения изменений.
```

## Что внутри

- Apple HIG: foundations, navigation, components, patterns;
- проектирование веб-продуктов с Apple-inspired, но не копирующим визуальным языком;
- дизайн-токены, Figma Variables и component-driven workflow;
- состояния компонентов и UX edge cases;
- accessibility: WCAG 2.2 AA, keyboard, focus, screen readers, reduced motion;
- responsive design, dark mode и touch/pointing input;
- SEO, performance, Core Web Vitals и production checklist;
- правила работы Claude Code: сначала исследование, затем план, маленькие изменения и проверка.

## Официальные ресурсы

- [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [Apple Design Resources](https://developer.apple.com/design/resources/)
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Apple Developer Accessibility](https://developer.apple.com/accessibility/)
- [WebKit](https://webkit.org/)
- [WCAG 2.2](https://www.w3.org/TR/WCAG22/)
- [web.dev](https://web.dev/)

## Принцип использования

Apple следует изучать как набор принципов: ясность, иерархия, консистентность, обратная связь и уважение к вниманию пользователя. Не копируйте защищённые брендинговые элементы, тексты, иконки или закрытые интерфейсы Apple.

## Лицензия

Учебные материалы распространяются по MIT License. Официальные материалы Apple остаются собственностью Apple и регулируются их условиями использования.
