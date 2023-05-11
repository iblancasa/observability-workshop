# OpenTelemetry

OpenTelemetry is an open-source observability framework that enables you to collect, process, and export telemetry data from your applications and systems. It provides a vendor-agnostic approach to observability, allowing you to collect data from various sources and export it to a range of different backends and tools.

## Some features

OpenTelemetry provides several key features that make it a powerful observability tool:

* Cross-language and cross-platform support: OpenTelemetry is available in multiple programming languages and can be used in various environments, including on-premises, cloud, and hybrid setups.
* Flexible instrumentation: OpenTelemetry provides a flexible API that enables you to instrument your code to capture telemetry data such as traces, metrics, and logs, with minimal overhead.
* Built-in exporters and integrations: OpenTelemetry provides built-in exporters and integrations with various tools and platforms, such as Prometheus, Jaeger, and AWS CloudWatch, making it easy to export and analyze telemetry data.
* Community-driven development: OpenTelemetry is developed and maintained by a vibrant community of contributors, ensuring that it is continually evolving and improving.

Many companies are using OpenTelemetry to improve their observability capabilities, including Uber, Splunk, Red Hat, New Relic, and more.

## The OpenTelemetry Collector
The OpenTelemetry Collector is a component of the OpenTelemetry project that provides a centralized and configurable way to collect, process, and export telemetry data. It acts as an intermediary between the instrumentation libraries and the backend telemetry systems.

The OpenTelemetry Collector can collect telemetry data from multiple sources, including different types of instrumentation libraries, services, and applications. It can also process and transform this data before exporting it to one or more backend telemetry systems, such as tracing systems, metrics systems, and logging systems.

The OpenTelemetry Collector is highly configurable and can be customized to meet specific requirements. It provides a range of configuration options, including the ability to filter and transform telemetry data, route telemetry data to specific backends, and customize the export format.

Some key features of the OpenTelemetry Collector include:
* **Data collection**: The OpenTelemetry Collector can collect telemetry data from various sources, including different types of instrumentation libraries, services, and applications. This makes it easy to aggregate telemetry data from different sources into a centralized location.
* **Data processing**: The OpenTelemetry Collector can process and transform telemetry data before exporting it to backend telemetry systems. This can include filtering, aggregating, and transforming data to meet specific requirements.
* **Exporters**: The OpenTelemetry Collector provides a range of built-in exporters for exporting telemetry data to different backend telemetry systems. These include exporters for popular tracing systems such as Jaeger and Zipkin, as well as metrics systems such as Prometheus and logging systems such as Elasticsearch.
* **Customization**: The OpenTelemetry Collector is highly customizable and provides a range of configuration options to meet specific requirements. This includes the ability to filter and transform telemetry data, route telemetry data to specific backends, and customize the export format.

![Schema of the OpenTelemetry Collector](./images/otelcollector-schema.png)

OpenTelemetry Collector is composed of:
* **Receivers**:  components that are responsible for collecting telemetry data from a specific source and passing it on to the OpenTelemetry Collector. Receivers can be thought of as input plugins that allow OpenTelemetry to collect telemetry data from different sources such as application logs, network traffic, or performance metrics. The receiver is responsible for collecting the telemetry data and converting it into a standard OpenTelemetry data format.
* **Processors**: components that are responsible for transforming, enriching, and filtering telemetry data before it is passed on to the next stage in the telemetry data pipeline. Processors can be thought of as middlewares that sit between the receiver and exporter components of OpenTelemetry. They are responsible for performing various actions on telemetry data, such as filtering out data that is not needed, or adding contextual information to data.
* **Exporters**: components that are responsible for sending telemetry data to backend telemetry systems for storage, analysis, and visualization. Exporters can be thought of as output plugins that allow OpenTelemetry to export telemetry data to different backend telemetry systems, such as cloud-based monitoring services, logging platforms, or data analysis tools.
* **Connectors**: components that export data in a pipeline and receive it in another. They are receivers and exporters at the same time.
* **Extensions**:  components that provide additional functionality to OpenTelemetry components such as the collector or SDKs. For intance, there are components to provide authentication features to the exporters.
