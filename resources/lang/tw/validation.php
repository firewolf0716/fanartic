<?php

return [

    /*
    |--------------------------------------------------------------------------
    | 驗證語言行
    |--------------------------------------------------------------------------
    |
    | 以下語言行是驗證程序類使用的默認錯誤
    | 這是一條消息。 一些驗證作為大小規則
    | 我有一些東西。 請自由調整消息。
    |
    */

    'accepted'             => ':attribute請批准。',
    'active_url'           => ':attribute不是有效的URL。',
    'after'                => ':attribute請在日期之後指定日期。',
    'after_or_equal'       => ':attribute請在日期之前指定日期。',
    'alpha'                => ':attribute只有字母可用。',
    'alpha_dash'           => ':attribute可以使用字母和短劃線（ - ）和下劃線（_）。',
    'alpha_num'            => ':attribute字母數字可用。',
    'array'                => ':attribute必須是一個數組。',
    'before'               => ':attribute請使用之前的日期：日期。',
    'before_or_equal'      => ':attribute的，:date請使用上一個日期。',
    'between'              => [
        'numeric' => ':attribute這是，:min請指定：最大值',
        'file'    => ':attributeは、:min kB從，:max kB請在之間指定。',
        'string'  => ':attributeは、:min從角色來看，:max請在字符之間指定。',
        'array'   => ':attributeは、:min從碎片:max請在件之間指定。',
    ],
    'boolean'              => ':attribute這是，true或false請註明。',
    'confirmed'            => ':attribute，和確認字段不匹配。',
    'date'                 => ':attribute請指定有效日期。',
    'date_format'          => ':attribute這是:format請以格式說明。',
    'different'            => ':attribute和:other請指定其他內容。',
    'digits'               => ':attribute這是:digits請用數字指定。',
    'digits_between'       => ':attribute這是:min從數字:max請在數字之間指定。',
    'dimensions'           => ':attribute數字大小不正確。',
    'distinct'             => ':attribute請指定不同的值。',
    'email'                => ':attribute請指定有效的電子郵件地址。',
    'exists'               => '所選擇的:attribute這是不正確的。',
    'file'                 => ':attribute請指定文件。',
    'filled'               => ':attribute請指定一個值。',
    'gt'                   => [
        'numeric' => ':attribute的，:value請指定一個更大的值。',
        'file'    => ':attributeには、:value kB請指定一個更大的文件。',
        'string'  => ':attributeは、:value請指定長於字符。',
        'array'   => ':attributeには、:value請指定更多項目。',
    ],
    'gte'                  => [
        'numeric' => ':attribute的，:value請指定大於或等於的值。',
        'file'    => ':attributeには、:value kB請指定以上文件。',
        'string'  => ':attributeは、:value請指定多個字符。',
        'array'   => ':attributeには、:value請指定多個項目。',
    ],
    'image'                => ':attribute請指定圖像文件。',
    'in'                   => '所選擇的:attribute這是不正確的。',
    'in_array'             => ':attribute該:other請指定值。',
    'integer'              => ':attribute請指定為整數。',
    'ip'                   => ':attribute請指定有效的IP地址。',
    'ipv4'                 => ':attribute請指定有效的IPv4地址。',
    'ipv6'                 => ':attribute請指定有效的IPv6地址。',
    'json'                 => ':attribute請指定有效的JSON字符串。',
    'lt'                   => [
        'numeric' => ':attribute的，:value請指定一個較小的值。',
        'file'    => ':attribute的，:value kB請指定一個較小的文件。',
        'string'  => ':attribute這是，:value請指定短於字符。',
        'array'   => ':attribute的，:value請指定更少的項目。',
    ],
    'lte'                  => [
        'numeric' => ':attribute的，:value請指定以下值。',
        'file'    => ':attribute的，:value kB指定以下文件。',
        'string'  => ':attribute的，:value請用少於字符指定它。',
        'array'   => ':attribute的，:value請指定項目或更少。',
    ],
    'max'                  => [
        'numeric' => ':attribute的，:max請指定以下號碼。',
        'file'    => ':attribute的，:max kB指定以下文件。',
        'string'  => ':attribute的，:max請用少於字符指定它。',
        'array'   => ':attribute的，:max請指定小於或等於。',
    ],
    'mimes'                => ':attribute該:values請指定類型的文件。',
    'mimetypes'            => ':attribute該:values請指定類型的文件。',
    'min'                  => [
        'numeric' => ':attributeには、:min請註明上面的數字。',
        'file'    => ':attributeには、:min kB請指定以上文件。',
        'string'  => ':attributeは、:min請指定多個字符。',
        'array'   => ':attributeは:min請指定多個。',
    ],
    'not_in'               => '所選擇的:attribute這是不正確的。',
    'not_regex'            => ':attribute文件格式無效。',
    'numeric'              => ':attribute指定單件點燃。',
    'present'              => ':attribute不存在。',
    'regex'                => ':attribute請指定正確的格式。',
    'required'             => ':attribute請務必註明。',
    'required_if'          => ':other那裡:value在這種情況下，:attribute還請說明。',
    'required_unless'      => ':other那裡:values如果沒有，:attribute請註明。',
    'required_with'        => ':values指定時，:attribute還請說明。',
    'required_with_all'    => ':values指定時，:attribute還請說明。',
    'required_without'     => ':values如果你沒有指定，:attribute請註明。',
    'required_without_all' => ':values如果沒有指定，:attribute請註明。',
    'same'                 => ':attribute和:other請指定相同的值。',
    'size'                 => [
        'numeric' => ':attribute這是:size請註明。',
        'file'    => ':attribute該文件:size它必須是千字節。',
        'string'  => ':attribute這是:size請用字母指明。',
        'array'   => ':attribute這是:size請指定一個。',
    ],
    'string'               => ':attribute請指定一個字符串。',
    'timezone'             => ':attribute請指定有效區域。',
    'unique'               => ':attribute該值已存在。',
    'uploaded'             => ':attribute上傳失敗。',
    'url'                  => ':attribute請指定正確的格式。',

    /*
    |--------------------------------------------------------------------------
    | Custom 驗證語言行
    |--------------------------------------------------------------------------
    |
    | 通過在“屬性規則”約定中指定鍵來進行自定義驗證
    | 您可以定義消息。 特定於指定的屬性規則
    | 您可以快速指定自定義語言行。
    |
    */

    'custom' => [
        '屬性名稱' => [
            '規則名稱' => '自定義消息',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | 自定義驗證屬性名稱
    |--------------------------------------------------------------------------
    |
    | 例如，以下語言行"email"而不是“電子郵件地址”
    | 指定讀者用友好的表達式替換佔位符
    | 這是一種語言。 這對於顯示更清晰的消息很有用。
    |
    */

    'attributes' => [],

];
