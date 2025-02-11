// This file was generated by https://github.com/grafana/dashboard-spec

{
  new(
    datasource='default',
    description=null,
    repeat=null,
    repeatDirection=null,
    title=null,
    transparent=false,
  ):: {
    [if datasource != null then 'datasource']: datasource,
    [if description != null then 'description']: description,
    [if repeat != null then 'repeat']: repeat,
    [if repeatDirection != null then 'repeatDirection']: repeatDirection,
    [if title != null then 'title']: title,
    [if transparent != null then 'transparent']: transparent,
    type: 'table',

    setFieldConfig(
      displayName=null,
      max=null,
      min=null,
      thresholdMode='absolute',
      noValue=null,
      unit='short',
      width=null,
    ):: self {}
        + { fieldConfig+: { defaults+: { [if displayName != null then 'displayName']: displayName } } }
        + { fieldConfig+: { defaults+: { [if max != null then 'max']: max } } }
        + { fieldConfig+: { defaults+: { [if min != null then 'min']: min } } }
        + { fieldConfig+: { defaults+: { thresholds+: { [if thresholdMode != null then 'mode']: thresholdMode } } } }
        + { fieldConfig+: { defaults+: { [if noValue != null then 'noValue']: noValue } } }
        + { fieldConfig+: { defaults+: { [if unit != null then 'unit']: unit } } }
        + { fieldConfig+: { defaults+: { custom+: { [if width != null then 'width']: width } } } }
    ,

    setGridPos(
      h=8,
      w=12,
      x=null,
      y=null,
    ):: self {}
        + { gridPos+: { [if h != null then 'h']: h } }
        + { gridPos+: { [if w != null then 'w']: w } }
        + { gridPos+: { [if x != null then 'x']: x } }
        + { gridPos+: { [if y != null then 'y']: y } }
    ,

    setOptions(
      showHeader=true,
    ):: self {}
        + { options+: { [if showHeader != null then 'showHeader']: showHeader } }
    ,


    addDataLink(
      targetBlank=true,
      title=null,
      url=null,
    ):: self {}
        + { fieldConfig+: { defaults+: { links+: [
          {
            [if targetBlank != null then 'targetBlank']: targetBlank,
            [if title != null then 'title']: title,
            [if url != null then 'url']: url,
          },
        ] } } },

    addPanelLink(
      targetBlank=true,
      title=null,
      url=null,
    ):: self {}
        + { links+: [
          {
            [if targetBlank != null then 'targetBlank']: targetBlank,
            [if title != null then 'title']: title,
            [if url != null then 'url']: url,
          },
        ] },

    addMapping(
      from=null,
      id=null,
      operator=null,
      text=null,
      to=null,
      type=null,
      value=null,
    ):: self {}
        + { fieldConfig+: { defaults+: { mappings+: [
          {
            [if from != null then 'from']: from,
            [if id != null then 'id']: id,
            [if operator != null then 'operator']: operator,
            [if text != null then 'text']: text,
            [if to != null then 'to']: to,
            [if type != null then 'type']: type,
            [if value != null then 'value']: value,
          },
        ] } } },

    addOverride(
      matcher=null,
      properties=null,
    ):: self {}
        + { fieldConfig+: { overrides+: [
          {
            [if matcher != null then 'matcher']: matcher,
            [if properties != null then 'properties']: properties,
          },
        ] } },

    addThresholdStep(
      color=null,
      value=null,
    ):: self {}
        + { fieldConfig+: { defaults+: { thresholds+: { steps+: [
          {
            [if color != null then 'color']: color,
            [if value != null then 'value']: value,
          },
        ] } } } },

    addTarget(
      target
    ):: self {}
        + { targets+: [
          target,
        ] },
    addTransformation(transformation):: self {
      transformations+: [transformation],
    },
    addTransformations(transformations):: std.foldl(function(p, t) p.addTransformation(t), transformations, self),
  },
}
