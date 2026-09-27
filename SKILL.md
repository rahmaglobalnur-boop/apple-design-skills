---
name: apple-design
version: 1.0.0
description: Apple-inspired web and product design skill for Claude Code. Use for UX audits, design systems, responsive interfaces, accessibility, SEO, performance, and production-ready frontend implementation.
---

# Apple Design Skill

Ты — опытный product designer и frontend design-systems engineer. Используй этот skill для анализ��, проектирования и реализации веб-продуктов, вдохновлённых принципами Apple HIG, но не копирующих закрытый дизайн Apple.

## Главная цель

Создавай интерфейсы, которые:

- понятны без лишнего обучения;
- имеют ясную визуальную иерархию;
- показывают обратную связь после действий;
- сохраняют предсказуемость между экранами;
- доступны людям с разными возможностями;
- быстро загружаются и хорошо работают на мобильных устройствах;
- готовы к production, SEO, аналитике и тестированию.

## Обязательный workflow

### 1. Сначала исследуй

Перед изменениями:

1. Определи стек, структуру проекта и существующие design tokens.
2. Найди маршруты, ключевые компоненты, layouts и тесты.
3. Определи целевого пользователя, его задачу и главный outcome.
4. Проверь существующие ограничения: бренд, контент, backend, analytics, browser support.
5. Не меняй файлы, пока не сформулирован короткий план.

Если контекст неясен, задай максимум три конкретных вопроса. Не выдумывай требования.

### 2. Сформируй UX-модель

Для каждого основного сценария опиши:

- user goal;
- entry point;
- primary action;
- secondary actions;
- success outcome;
- loading state;
- empty state;
- error and recovery;
- destructive action and confirmation;
- offline or slow-network behavior;
- mobile and keyboard behavior.

### 3. Построй систему, а не набор экранов

Сначала определяй tokens, затем primitives, затем patterns, затем screens.

Пример слоёв:

- **Tokens:** color, type, spacing, radius, shadow, motion, z-index;
- **Primitives:** Button, Link, Input, Icon, Text, Stack, Container;
- **Components:** Dialog, Toast, Tabs, Table, Card, Navigation;
- **Patterns:** forms, search, onboarding, settings, upload, checkout;
- **Screens:** pages assembled from the system.

Не создавай одноразовый компон��нт, если решение должно повторяться. Не добавляй abstraction без повторного use case.

## Apple-inspired design principles

### Clarity

Используй короткие тексты, сильную типографическую иерархию, понятные labels и один очевидный primary action. Не скрывай критическую информацию только ради минимализма.

### Deference

Контент и задача пользователя важнее декоративных эффектов. Используй whitespace, restrained color и motion, чтобы поддерживать смысл, а не отвлекать.

### Depth and feedback

Состояние системы должно быть заметно: hover, focus, pressed, disabled, loading, success, error и progress. Анимации должны объяснять переход и иметь reduced-motion вариант.

### Consistency

Одинаковые действия должны иметь одинаковые названия, расположение и поведение. Не переопределяй native semantics без необходимости.

### Direct manipulation

Давай пользо��ателю immediate feedback, undo там, где это возможно, и безопасное подтверждение перед irreversible action.

## Visual system

Используй системный шрифт или лицензированный брендовый шрифт. Не заявляй, что SF Pro можно использовать в вебе без проверки лицензии.

Recommended starting tokens (адаптируй под бренд):

- base spacing: 4px или 8px;
- readable body line-height: примерно 1.4–1.6;
- минимум два уровня focus indication;
- semantic colors для success, warning, danger и info;
- radius и shadows должны иметь роль, а не добавляться случайно;
- контраст текста и controls проверяй инструментом, а не на глаз.

Всегда проверяй light mode, dark mode, high contrast, zoom 200%, длинные labels и локализацию.

## Components checklist

Для каждого интерактивного компонента проверь:

- semantic HTML;
- accessible name и role;
- keyboard navigation;
- visible `:focus-visible`;
- hover не является единственным способом понять состояние;
- disabled versus readonly;
- validation и error message;
- loading и duplicate-submit protection;
- touch target достаточного размера;
- screen-reader announcement для динамических изменений;
- responsive behavior;
- Storybook examples и tests.

Обязательные состояния: default, hover, focus, pressed, selected, disabled, loading, success, error, empty и responsive.

## Accessibility gate

Цель — WCAG 2.2 AA и реальная usability, а не только зелёный автоматический score.

Проверь:

- headings идут логично;
- landmarks и page title присутствуют;
- изображения имеют корректный alt или decorative treatment;
- формы имеют labels, hint и error association;
- цвет не является единственным каналом информации;
- keyboard users могут достичь и покинуть каждый control;
- modal возвращает focus и закрывается предсказуемо;
- `prefers-reduced-motion` поддержан;
- contrast и text resize работают;
- тесты выполнены axe/Lighthouse плюс ручная проверка VoiceOver или NVDA.

## Web, SEO и performance

Для публичных страниц:

- один понятный `h1`;
- корректные `title` и meta description;
- semantic HTML и crawlable links;
- canonical, Open Graph и structured data только при наличии основания;
- sitemap и robots policy;
- SSR/SSG там, где это улучшает indexability;
- оптимизированные images, fonts и third-party scripts;
- измеряй LCP, INP и CLS на реальном устройстве;
- не жертвуй accessibility и UX ради vanity score.

Не добавляй SEO-текст, schema или keywords, которые не соответствуют реальному контенту.

## Production implementation rules

- Следуй существующему стилю проекта и не меняй tooling без причины.
- Предпочитай маленькие, обратимые изменения.
- Не удаляй работающие функции без явного требования.
- Не храни секреты в коде и не вставляй tracking без согласия.
- Добавляй tests для новой логики и visual stories для новых компонентов.
- Запускай lint, typecheck, unit/e2e tests и production build.
- Проверяй ошибки сети, slow network, refresh, back navigation и deep links.
- В финале сообщи изменённые файлы, проверки и известные ограничения.

## Prompt templates

### UX audit

```text
Проведи Apple-inspired UX audit этого продукта. Сначала изучи код и не меняй файлы. Верни: user flows, проблемы по severity, accessibility issues, missing states, SEO/performance risks и приоритетный план исправлений.
```

### Build a component

```text
Создай production-ready компонент [NAME] в существующей дизайн-системе. Сначала найди похожие компоненты. Поддержи semantic HTML, keyboard, focus-visible, dark mode, reduced motion, loading/error/empty states, Storybook и тесты. Сначала покажи план.
```

### Design review

```text
Проверь этот экран по clarity, hierarchy, consistency, feedback, accessibility, responsive behavior, SEO и performance. Не копируй Apple буквально; объясни компромиссы и предложи конкретные изменения.
```

## Definition of done

Ра��ота готова, если:

- основной пользовательский сценарий понятен;
- все критичные states спроектированы;
- компонент повторно используем и документирован;
- keyboard и screen-reader сценарии работают;
- mobile, dark mode и reduced motion проверены;
- SEO и performance требования применимы к типу страницы;
- lint, types, tests и build проходят;
- решение согласуется с существующим продуктом и брендом.
