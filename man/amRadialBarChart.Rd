% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amRadialBarChart.R
\name{amRadialBarChart}
\alias{amRadialBarChart}
\title{HTML widget displaying a radial bar chart}
\usage{
amRadialBarChart(
  data,
  data2 = NULL,
  category,
  values,
  valueNames = NULL,
  showValues = TRUE,
  innerRadius = 50,
  yLimits = NULL,
  expandY = 5,
  valueFormatter = "#.",
  chartTitle = NULL,
  theme = NULL,
  animated = TRUE,
  draggable = FALSE,
  tooltip = NULL,
  columnStyle = NULL,
  bullets = NULL,
  alwaysShowBullets = FALSE,
  backgroundColor = NULL,
  cellWidth = NULL,
  columnWidth = NULL,
  xAxis = NULL,
  yAxis = NULL,
  scrollbarX = FALSE,
  scrollbarY = FALSE,
  legend = NULL,
  caption = NULL,
  image = NULL,
  button = NULL,
  cursor = FALSE,
  width = NULL,
  height = NULL,
  export = FALSE,
  chartId = NULL,
  elementId = NULL
)
}
\arguments{
\item{data}{a dataframe}

\item{data2}{\code{NULL} or a dataframe used to update the data with the
button; its column names must include the column names of \code{data}
given in \code{values}, it must have the same number of rows as
\code{data} and its rows must be in the same order as those of \code{data}}

\item{category}{name of the column of \code{data} to be used on the
category axis}

\item{values}{name(s) of the column(s) of \code{data} to be used on the
value axis}

\item{valueNames}{names of the values variables, to appear in the legend;
\code{NULL} to use \code{values} as names, otherwise a named list of the
form \code{list(value1 = "ValueName1", value2 = "ValueName2", ...)} where
\code{value1}, \code{value2}, ... are the column names given in
\code{values} and \code{"ValueName1"}, \code{"ValueName2"}, ... are the
desired names to appear in the legend; these names can also appear in
the tooltips: they are substituted to the string \code{{name}} in
the formatting string passed on to the tooltip (see the second example of
\code{\link{amBarChart}})}

\item{showValues}{logical, whether to display the values on the chart}

\item{innerRadius}{inner radius of the chart, a percentage (between 0 and
100 theoretically, but in practice it should be between 30 and 70)}

\item{yLimits}{range of the y-axis, a vector of two values specifying
the lower and the upper limits of the y-axis; \code{NULL} for default values}

\item{expandY}{if \code{yLimits = NULL}, a percentage of the range of the
y-axis used to expand this range}

\item{valueFormatter}{a
\href{https://www.amcharts.com/docs/v4/concepts/formatters/formatting-numbers/}{number formatting string};
it is used to format the values displayed on the chart if
\code{showValues = TRUE}, the values displayed in the cursor tooltips if
\code{cursor = TRUE}, the labels of the y-axis unless you specify
your own formatter in the \code{labels} field of the list passed on to
the \code{yAxis} option, and the values displayed in the tooltips unless
you specify your own tooltip text (see the first example for the way to set
a number formatter in the tooltip text)}

\item{chartTitle}{chart title, it can be \code{NULL} or \code{FALSE} for no
title, a character string,
a list of settings created with \code{\link{amText}}, or a list with two
fields: \code{text}, a list of settings created with \code{\link{amText}},
and \code{align}, can be \code{"left"}, \code{"right"} or \code{"center"}}

\item{theme}{theme, \code{NULL} or one of \code{"dataviz"},
\code{"material"}, \code{"kelly"}, \code{"dark"}, \code{"moonrisekingdom"},
\code{"frozen"}, \code{"spiritedaway"}, \code{"patterns"},
\code{"microchart"}}

\item{animated}{Boolean, whether to animate the rendering of the graphic}

\item{draggable}{\code{TRUE}/\code{FALSE} to enable/disable dragging of
all bars, otherwise a named list of the form
\code{list(value1 = TRUE, value2 = FALSE, ...)} to enable/disable the
dragging for each bar corresponding to a column given in \code{values}}

\item{tooltip}{settings of the tooltips; \code{NULL} for default,
\code{FALSE} for no tooltip, otherwise a named list of the form
\code{list(value1 = settings1, value2 = settings2, ...)} where
\code{settings1}, \code{settings2}, ... are lists created with
\code{\link{amTooltip}}; this can also be a
single list of settings that will be applied to each series,
or a just a string for the text to display in the tooltip}

\item{columnStyle}{settings of the columns; \code{NULL} for default,
otherwise a named list of the form
\code{list(value1 = settings1, value2 = settings2, ...)} where
\code{settings1}, \code{settings2}, ... are lists created with
\code{\link{amColumn}}; this can also be a
single list of settings that will be applied to each column}

\item{bullets}{settings of the bullets; \code{NULL} for default,
otherwise a named list of the form
\code{list(value1 = settings1, value2 = settings2, ...)} where
\code{settings1}, \code{settings2}, ... are lists created with
\code{\link{amCircle}}, \code{\link{amTriangle}} or
\code{\link{amRectangle}}; this can also be a
single list of settings that will be applied to each series}

\item{alwaysShowBullets}{logical, whether to always show the bullets;
if \code{FALSE}, the bullets are shown only on hovering a column}

\item{backgroundColor}{a color for the chart background; a color can be
given by the name of a R color, the name of a CSS color, e.g.
\code{"lime"} or \code{"fuchsia"}, an HEX code like
\code{"#ff009a"}, a RGB code like \code{"rgb(255,100,39)"}, or a HSL code
like \code{"hsl(360,11,255)"}}

\item{cellWidth}{cell width in percent; for a simple bar chart, this is the
width of the columns; for a grouped bar chart, this is the width of the
clusters of columns; \code{NULL} for the default value}

\item{columnWidth}{column width, a percentage of the cell width; set to 100
for a simple bar chart and use \code{cellWidth} to control the width of the
columns; for a grouped bar chart, this controls the spacing between the
columns within a cluster of columns; \code{NULL} for the default value}

\item{xAxis}{settings of the category axis given as a list, or just a string
for the axis title; the list of settings has three possible fields:
a field \code{title}, a list of settings for the axis title created
with \code{\link{amText}},
a field \code{labels}, a list of settings for the axis labels created
with \code{\link{amAxisLabelsCircular}},
and a field \code{adjust}, a number defining the vertical adjustment of
the axis (in pixels)}

\item{yAxis}{settings of the value axis given as a list, or just a string
for the axis title; the list of settings has five possible fields:
a field \code{title}, a list of settings for the axis title created
with \code{\link{amText}},
a field \code{labels}, a list of settings for the axis labels created
with \code{\link{amAxisLabels}},
a field \code{adjust}, a number defining the horizontal adjustment of
the axis (in pixels), a field \code{gridLines}, a list of settings for
the grid lines created with \code{\link{amLine}} and a field
\code{breaks} to control the axis breaks, an R object created with
\code{\link{amAxisBreaks}}}

\item{scrollbarX}{logical, whether to add a scrollbar for the category axis}

\item{scrollbarY}{logical, whether to add a scrollbar for the value axis}

\item{legend}{either a logical value, whether to display the legend, or
a list of settings for the legend created with \code{\link{amLegend}}}

\item{caption}{\code{NULL} or \code{FALSE} for no caption, a formatted
text created with \code{\link{amText}}, or a list with two fields:
\code{text}, a list created with \code{\link{amText}}, and \code{align},
can be \code{"left"}, \code{"right"} or \code{"center"}}

\item{image}{option to include an image at a corner of the chart;
\code{NULL} or \code{FALSE} for no image, otherwise a named list with four
possible fields: the field \code{image} (required) is a list created with
\code{\link{amImage}},
the field \code{position} can be \code{"topleft"}, \code{"topright"},
\code{"bottomleft"} or \code{"bottomright"}, the field \code{hjust}
defines the horizontal adjustment, and the field \code{vjust} defines
the vertical adjustment}

\item{button}{\code{NULL} for the default, \code{FALSE} for no button,
or a list of settings created with \code{\link{amButton}}; this button is
used to replace the current data with \code{data2}}

\item{cursor}{option to add a cursor on the chart; \code{FALSE} for no
cursor, \code{TRUE} for a cursor with default settings for the tooltips,
or a list of settings created with \code{\link{amTooltip}} to
set the style of the tooltips, or a list with three possible fields:
a field \code{tooltip}, a list of tooltip settings created with
\code{\link{amTooltip}}, a field
\code{extraTooltipPrecision}, an integer, the number of additional
decimals to display in the tooltips, and a field \code{modifier},
which defines a modifier for the
values displayed in the tooltips; a modifier is some JavaScript code
given a string, which performs a modification of a string named
\code{text}, e.g. \code{modifier = "text = '>>>' + text;"}}

\item{width}{the width of the chart, e.g. \code{"600px"} or \code{"80\%"};
ignored if the chart is displayed in Shiny, in which case the width is
given in \code{\link{amChart4Output}}}

\item{height}{the height of the chart, e.g. \code{"400px"};
ignored if the chart is displayed in Shiny, in which case the height is
given in \code{\link{amChart4Output}}}

\item{export}{logical, whether to enable the export menu}

\item{chartId}{a HTML id for the chart}

\item{elementId}{a HTML id for the container of the chart; ignored if the
chart is displayed in Shiny, in which case the id is given by the Shiny id}
}
\description{
Create a HTML widget displaying a radial bar chart.
}
\examples{
# a grouped radial bar chart ####

set.seed(666)
dat <- data.frame(
  country = c("USA", "China", "Japan", "Germany", "UK", "France"),
  visits = c(3025, 1882, 1809, 1322, 1122, 1114),
  income = rpois(6, 25),
  expenses = rpois(6, 20)
)

amRadialBarChart(
  data = dat, data2 = dat,
  width = "600px", height = "600px",
  category = "country",
  values = c("income", "expenses"),
  valueNames = list(income = "Income", expenses = "Expenses"),
  showValues = FALSE,
  tooltip = amTooltip(
    textColor = "white",
    backgroundColor = "#101010",
    borderColor = "silver"
  ),
  draggable = TRUE,
  backgroundColor = "#30303d",
  columnStyle = list(
    income = amColumn(
      color = "darkmagenta",
      strokeColor = "#cccccc",
      strokeWidth = 2
    ),
    expenses = amColumn(
      color = "darkred",
      strokeColor = "#cccccc",
      strokeWidth = 2
    )
  ),
  chartTitle = "Income and expenses per country",
  xAxis = list(
    labels = amAxisLabelsCircular(
      radius = -82, relativeRotation = 90
    )
  ),
  yAxis = list(
    labels = amAxisLabels(color = "orange"),
    gridLines = amLine(color = "whitesmoke", width = 1, opacity = 0.4),
    breaks = amAxisBreaks(values = seq(0, 40, by = 10))
  ),
  yLimits = c(0, 40),
  valueFormatter = "#.#",
  caption = amText(
    text = "Year 2018",
    fontFamily = "Impact",
    fontSize = 18
  ),
  theme = "dark")


# just for fun ####

dat <- data.frame(
  cluster = letters[1:6],
  y1 = rep(10, 6),
  y2 = rep(8, 6),
  y3 = rep(6, 6),
  y4 = rep(4, 6),
  y5 = rep(2, 6),
  y6 = rep(4, 6),
  y7 = rep(6, 6),
  y8 = rep(8, 6),
  y9 = rep(10, 6)
)

amRadialBarChart(
  data = dat,
  width = "500px", height = "500px",
  innerRadius = 10,
  category = "cluster", values = paste0("y", 1:9),
  showValues = FALSE,
  tooltip = FALSE, draggable = FALSE,
  backgroundColor = "black",
  columnStyle = amColumn(strokeWidth = 1, strokeColor = "white"),
  cellWidth = 96,
  xAxis = list(labels = FALSE),
  yAxis = list(labels = FALSE, gridLines = FALSE),
  yLimits = c(0, 10),
  legend = FALSE,
  theme = "kelly")
}
