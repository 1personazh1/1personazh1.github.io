# JDM Culture Blog

Блог о японской автомобильной культуре (JDM - Japanese Domestic Market), созданный с помощью Hugo и размещен на GitHub Pages.

## Особенности

- Современный дизайн с ретро-мотивами
- Полностью адаптивный интерфейс (mobile-first)
- Поддержка видео вставок (YouTube через shortcodes)
- Система тегов и категорий
- Интеграция с социальными сетями (Twitter, Telegram, VK)
- Автоматический деплой через GitHub Actions
- Темная тема с акцентными элементами (#ff3333)
- Анимации при скролле (fade-in эффекты)
- Блок "Похожие статьи" по тегам
- Навигация "Следующая/Предыдущая" статья
- Open Graph и Twitter Cards для соцсетей
- RSS-лента и карта сайта

## Технологии

- [Hugo](https://gohugo.io/) v0.120+ — генератор статических сайтов
- [GitHub Pages](https://pages.github.com/) — хостинг
- [SCSS](https://sass-lang.com/) — препроцессор CSS
- [Orbitron](https://fonts.google.com/specimen/Orbitron) — шрифт для заголовков
- [Inter](https://fonts.google.com/specimen/Inter) — шрифт для основного текста

## Структура проекта

```
jdm-blog/
├── archetypes/           # Шаблоны для новых статей
├── assets/scss/          # SCSS стили
│   └── main.scss
├── content/posts/        # Статьи блога
├── layouts/              # HTML шаблоны
│   ├── _default/         # Шаблоны по умолчанию
│   ├── partials/         # Переиспользуемые компоненты
│   ├── shortcodes/       # Shortcodes (youtube, social-share)
│   └── index.html        # Главная страница
├── static/               # Статические файлы
│   ├── images/           # Изображения
│   └── favicon.ico
├── themes/jdm-theme/     # Тема блога
├── .github/workflows/    # GitHub Actions
│   └── deploy.yml
├── config.toml           # Конфигурация Hugo
└── README.md
```

## Локальный запуск

### Требования

- Hugo Extended версии 0.120 или выше
- Git

### Установка

1. Клонируйте репозиторий:
```bash
git clone https://github.com/username/jdm-blog.git
cd jdm-blog
```

2. Запустите локальный сервер:
```bash
hugo server
```

3. Откройте браузер по адресу: `http://localhost:1313`

## Создание новой статьи

```bash
hugo new posts/nazvanie-stati.md
```

Откроется файл с front matter:
```markdown
---
title: "Название статьи"
date: 2024-01-01
tags: ["тег1", "тег2"]
categories: ["Категория"]
image: "izobrazhenie.jpg"
---
```

### Использование shortcodes

**YouTube видео:**
```markdown
{{< youtube VIDEO_ID >}}
```

**Кнопки соцсетей:**
```markdown
{{< social-share >}}
```

## Деплой на GitHub Pages

### Настройка

1. В `config.toml` укажите ваш `baseURL`:
```toml
baseURL = "https://username.github.io/jdm-blog"
```

2. В `layouts/partials/footer.html` замените `YOUR_FORM_ID` на ваш ID из [Formspree](https://formspree.io/)

3. В `.github/workflows/deploy.yml` проверьте версию Hugo (должна совпадать с локальной)

### Автоматический деплой

При пуше в ветку `main` сайт автоматически деплоится:

```bash
git add .
git commit -m "Добавлена новая статья"
git push origin main
```

Через 1-2 минуты сайт обновится по адресу: `https://username.github.io/jdm-blog`

## Настройка Google Analytics

В `config.toml` добавьте ваш ID:
```toml
[services]
  [services.googleAnalytics]
    id = "G-XXXXXXXXXX"
```

## Изображения

### Требования к изображениям

- Формат: WebP (рекомендуется), JPG, PNG, SVG
- Размер: оптимизирован для веба
- Расположение: `static/images/`
- Alt-текст: обязателен для доступности

### Placeholder

Для статей без изображений используется автоматический placeholder.

## Цветовая схема

| Переменная | Значение | Описание |
|------------|----------|----------|
| `jdm_dark` | #1a1a1a | Угольный фон |
| `jdm_accent` | #ff3333 | Оранжево-красный акцент |
| `jdm_light` | #f0f0f0 | Белый текст |

## Структура статей

Примеры статей в `content/posts/`:
- `sample.md` — История Nissan Skyline GT-R
- `supra-mk4.md` — Легенда о Toyota Supra MK4
- `mazda-rx7.md` — Mazda RX-7 и роторный двигатель
- `civic-type-r.md` — Honda Civic Type R
- `drift-culture.md` — Культура дрифта в Японии

## Лицензия

MIT

## Автор

**1personazh1**

GitHub: [@1personazh1](https://github.com/1personazh1)