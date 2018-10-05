<?php

return [

    /*
    |--------------------------------------------------------------------------
    | 验证语言行
    |--------------------------------------------------------------------------
    |
    | 以下语言行是验证程序类使用的默认错误
    | 这是一条消息。 一些验证作为大小规则
    | 我有一些东西。 请自由调整消息。
    |
    */

    'accepted'             => '请批准。',
    'active_url'           => ':attribute不是有效的URL。',
    'after'                => ':attribute的，、:date请指定以后的日期。',
    'after_or_equal'       => ':attribute的，、:date请指定以前的日期。',
    'alpha'                => ':attribute只有字母可用。',
    'alpha_dash'           => ':attribute可以使用字母和短划线（ - ）和下划线（_）。',
    'alpha_num'            => ':attribute字母数字可用。',
    'array'                => ':attribute必须是一个数组。',
    'before'               => ':attribute请使用之前的日期：日期。',
    'before_or_equal'      => ':attribute请使用日期：日期。',
    'between'              => [
        'numeric' => ':attributeは、:min从:max请在之间指定。',
        'file'    => ':attributeは、:min kB从、:max kB请在之间指定。',
        'string'  => ':attributeは、:min文字从、:max请在字符之间指定。',
        'array'   => ':attributeは、:min请在：max：max之间指定。',
    ],
    'boolean'              => ':attribute请指明true或false。',
    'confirmed'            => ':attribute，和确认字段不匹配。',
    'date'                 => ':attribute请指定有效日期。',
    'date_format'          => ':attribute请注明格式：格式。',
    'different'            => ':attribute并且：其他，请说明不同的内容。',
    'digits'               => ':attribute请用数字指定。',
    'digits_between'       => ':attribute：请在最小数字和最大数字之间指定。',
    'dimensions'           => ':attribute数字大小不正确。',
    'distinct'             => ':attribute请指定不同的值。',
    'email'                => ':attribute请指定有效的电子邮件地址。',
    'exists'               => '所选择的:attribute这是不正确的。',
    'file'                 => ':attribute请指定文件。',
    'filled'               => ':attribute请指定一个值。',
    'gt'                   => [
        'numeric' => ':attribute请指定一个大于：value的值。',
        'file'    => ':attribute的，:value kB请指定一个更大的文件。',
        'string'  => ':attributeは、:value请指定长于字符。',
        'array'   => ':attributeには、:value请指定更多项目。。',
    ],
    'gte'                  => [
        'numeric' => ':attribute的，:value请指定大于或等于的值。',
        'file'    => ':attribute的，:value kB请指定以上文件。',
        'string'  => ':attribute的，:value请指定多个字符。',
        'array'   => ':attribute的，:value请指定多个项目。',
    ],
    'image'                => ':attribute请指定图像文件。',
    'in'                   => '所选择的:attribute这是不正确的。',
    'in_array'             => ':attribute指定值：other for。',
    'integer'              => ':attribute请指定为整数。',
    'ip'                   => ':attribute请指定有效的IP地址。',
    'ipv4'                 => ':attribute请指定有效的IPv4地址。',
    'ipv6'                 => ':attribute请指定有效的IPv6地址。',
    'json'                 => ':attribute请指定有效的JSON字符串。',
    'lt'                   => [
        'numeric' => ':attribute请指定小于：值的值。',
        'file'    => ':attribute的，:value kB请指定一个较小的文件。',
        'string'  => ':attribute的，:value文字より短く指定してください。',
        'array'   => ':attribute的，:value请指定更少的项目。',
    ],
    'lte'                  => [
        'numeric' => ':attribute的，:value请指定以下值。',
        'file'    => ':attribute的，:value kB',
        'string'  => ':attribute的，:value请用少于字符指定它。',
        'array'   => ':attribute的，:value请指定项目或更少。',
    ],
    'max'                  => [
        'numeric' => ':attributeには、:max请指定以下号码。',
        'file'    => ':attributeには、:max kB指定以下文件。',
        'string'  => ':attributeは、:max请用少于字符指定它。',
        'array'   => ':attributeは:max请指定小于或等于。',
    ],
    'mimes'                => ':attributeには:values请指定类型的文件。',
    'mimetypes'            => ':attributeには:values请指定类型的文件。',
    'min'                  => [
        'numeric' => ':attributeには、:min请注明上面的数字。',
        'file'    => ':attributeには、:min kB请指定以上文件。',
        'string'  => ':attributeは、:min请指定多个字符。',
        'array'   => ':attributeは:min请指定多个。',
    ],
    'not_in'               => '所选择的:attribute这是不正确的。',
    'not_regex'            => ':attribute文件格式无效。',
    'numeric'              => ':attribute请指定一个号码。',
    'present'              => ':attribute不存在。',
    'regex'                => ':attribute请指定正确的格式。',
    'required'             => ':attribute请务必注明。',
    'required_if'          => ':other那里:value在这种情况下，:attribute还请说明。',
    'required_unless'      => ':other那里:values如果没有，:attribute请注明。',
    'required_with'        => ':values指定时，:attribute还请说明。',
    'required_with_all'    => ':values指定时，:attribute还请说明。',
    'required_without'     => ':values如果你没有指定，:attribute请注明。',
    'required_without_all' => ':values如果没有指定，:attribute请注明。',
    'same'                 => ':attribute和:other请指定相同的值。',
    'size'                 => [
        'numeric' => ':attribute这是:size请注明。',
        'file'    => ':attribute该文件:size它必须是千字节。',
        'string'  => ':attribute这是:size请用字母指明。',
        'array'   => ':attribute这是:size请指定一个。',
    ],
    'string'               => ':attribute请指定一个字符串。',
    'timezone'             => ':attribute请指定有效区域。',
    'unique'               => ':attribute该值已存在。',
    'uploaded'             => ':attribute上传失败。',
    'url'                  => ':attribute请指定正确的格式。',

    /*
    |--------------------------------------------------------------------------
    | Custom 验证语言行
    |--------------------------------------------------------------------------
    |
    | 通过在“属性规则”约定中指定键来进行自定义验证
    | 您可以定义消息。 特定于指定的属性规则
    | 您可以快速指定自定义语言行。
    |
    */

    'custom' => [
        '属性名称' => [
            'ルール名' => '规则名称',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | 自定义验证属性名称
    |--------------------------------------------------------------------------
    |
    | 对于以下语言行，例如，“电子邮件地址”而不是“电子邮件”
    | 指定读者用友好的表达式替换占位符
    | 言語行です。これはメッセージをよりきれいに表示するために役に立ちます。
    |
    */

    'attributes' => [],

];
