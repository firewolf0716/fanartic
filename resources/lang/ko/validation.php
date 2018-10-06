<?php

return [

    /*
    |--------------------------------------------------------------------------
    | 검증 언어 행
    |--------------------------------------------------------------------------
    |
    | 다음 언어 행은 발리 데타 클래스에 의해 사용되는 기본 오류
    | 메시지입니다. 크기 규칙과 같은 몇 가지 검증을
    | 가지고있는 것도 있습니다. 메시지는 자유롭게 조정하십시오.
    |
    */

    'accepted'             => ':attribute을 승인합니다.',
    'active_url'           => ':attribute가 유효한 URL이 없습니다.',
    'after'                => ':attribute는 : date 이후의 날짜를 지정하십시오.',
    'after_or_equal'       => ':attribute는 : date 이전의 날짜를 지정하십시오.',
    'alpha'                => ':attribute는 알파벳 만 사용할 수 있습니다.',
    'alpha_dash'           => ':attribute는 알파벳과 대시(-) 및 밑줄(_)을 사용할 수 있습니다.',
    'alpha_num'            => ':attribute는 알파벳 숫자 이용하실 수 있습니다.',
    'array'                => ':attribute는 배열이 아니면 안됩니다.',
    'before'               => ': attribute는 : date 이전의 날짜를 이용해주십시오.',
    'before_or_equal'      => ': attribute는 : date 이전의 날짜를 이용해주십시오.',
    'between'              => [
        'numeric' => ': attribute는 : min에서 : max 사이에 지정하십시오.',
        'file'    => ': attribute는 : min kB에서 : max kB의 사이에서 지정하십시오.',
        'string'  => ': attribute는 : min 문자에서 : max 문자 사이에 지정하십시오.',
        'array'   => ': attribute는 : min 개에서 : max 개 사이 여야합니다.',
    ],
    'boolean'              => ': attribute는 true 나 false를 지정하십시오.',
    'confirmed'            => ': attribute와 확인 필드가 일치하지 않습니다.',
    'date'                 => ': attribute는 유효한 날짜를 지정하십시오.',
    'date_format'          => ': attribute는 : format 형식으로 지정하십시오.',
    'different'            => ': attribute와 : other는 다른 내용을 지정하십시오.',
    'digits'               => ': attribute는 : digits 자릿수로 지정하십시오.',
    'digits_between'       => ': attribute는 : min 자리에서 : max 자리 사이에서 지정하십시오.',
    'dimensions'           => ': attribute의 도형 크기가 올바르지 않습니다.',
    'distinct'             => ': attribute에 다른 값을 지정하십시오.',
    'email'                => ': attribute는 유효한 이메일 주소를 지정하십시오.',
    'exists'               => '선택된 : attribute는 올바르지 않습니다.',
    'file'                 => ': attribute는 파일을 지정합니다.',
    'filled'               => ': attribute에 값을 지정하십시오.',
    'gt'                   => [
        'numeric' => ': attribute는 : value보다 큰 값을 지정하십시오.',
        'file'    => ': attribute는 : value kB보다 큰 파일을 지정합니다.',
        'string'  => ': attribute는 : value자를 초과 지정하십시오.',
        'array'   => ': attribute는 : value 개보다 많은 항목을 지정하십시오.',
    ],
    'gte'                  => [
        'numeric' => ': attribute는 : value 이상의 값을 지정하십시오.',
        'file'    => ': attribute는 : value kB 이상의 파일을 지정합니다.',
        'string'  => ': attribute는 : value 자 이상이어야합니다.',
        'array'   => ': attribute는 : value 개 이상의 항목을 지정하십시오.',
    ],
    'image'                => ': attribute는 이미지 파일을 지정합니다.',
    'in'                   => '선택된 : attribute는 올바르지 않습니다.',
    'in_array'             => ': attribute는 : other 값을 지정하십시오.',
    'integer'              => ': attribute는 정수로 지정합니다.',
    'ip'                   => ': attribute에 유효한 IP 주소를 지정하십시오.',
    'ipv4'                 => ': attribute는 유효한 IPv4 주소를 지정하십시오.',
    'ipv6'                 => ': attribute에 유효한 IPv6 주소를 지정하십시오.',
    'json'                 => ': attribute에는 유효한 JSON 문자열을 지정하십시오.',
    'lt'                   => [
        'numeric' => ': attribute는 : value보다 작은 값을 지정하십시오.',
        'file'    => ': attribute는 : value kB보다 작은 파일을 지정합니다.',
        'string'  => ': attribute는 : value 자보다 짧게 지정하십시오.',
        'array'   => ': attribute는 : value 개보다 적은 항목을 지정하십시오.',
    ],
    'lte'                  => [
        'numeric' => ': attribute는 : value 다음 값을 지정하십시오.',
        'file'    => ': attribute는 : value kB 다음 파일을 지정합니다.',
        'string'  => ': attribute는 : value 자까지 입력하십시오.',
        'array'   => ': attribute는 : value 개 이하의 항목을 지정하십시오.',
    ],
    'max'                  => [
        'numeric' => ': attribute는 : max 이하의 숫자를 지정하십시오.',
        'file'    => ': attribute는 : max kB 다음 파일을 지정합니다.',
        'string'  => ': attribute는 : max 자까지 입력하십시오.',
        'array'   => ': attribute는 : max 개 이하 여야합니다.',
    ],
    'mimes'                => ': attribute는 : values 유형의 파일을 지정합니다.',
    'mimetypes'            => ': attribute는 : values 유형의 파일을 지정합니다.',
    'min'                  => [
        'numeric' => ': attribute는 : min 이상의 숫자를 지정하십시오.',
        'file'    => ': attribute는 : min kB 이상의 파일을 지정합니다.',
        'string'  => ': attribute는 : min 자 이상이어야합니다.',
        'array'   => ': attribute는 : min 개 이상 지정하십시오.',
    ],
    'not_in'               => '선택된 : attribute는 올바르지 않습니다.',
    'not_regex'            => ': attribute의 형식이 올바르지 않습니다.',
    'numeric'              => ': attribute에 숫자를 지정하십시오.',
    'present'              => ': attribute가 존재하지 않습니다.',
    'regex'                => ': attribute 올바른 형식을 지정하십시오.',
    'required'             => ': attribute는 반드시 지정하십시오.',
    'required_if'          => ': other가 : value 경우 : attribute를 지정하십시오.',
    'required_unless'      => ': other가 : values 않은 경우 : attribute를 지정하십시오.',
    'required_with'        => ': values를 지정하려면 : attribute를 지정하십시오.',
    'required_with_all'    => ': values를 지정하려면 : attribute를 지정하십시오.',
    'required_without'     => ': values를 지정하지 않으면 : attribute를 지정하십시오.',
    'required_without_all' => ': values 아무도 지정하지 않으면 : attribute를 지정하십시오.',
    'same'                 => ': attribute와 : other로 같은 값을 지정하십시오.',
    'size'                 => [
        'numeric' => ': attribute는 : size하십시오.',
        'file'    => ': attribute 파일 : size 킬로바이트 않으면 안됩니다.',
        'string'  => ': attribute는 : size 문자로 지정합니다.',
        'array'   => ': attribute는 : size 개의 지정하십시오.',
    ],
    'string'               => ': attribute는 문자열을 지정하십시오.',
    'timezone'             => ': attribute에는 유효한 영역을 지정하십시오.',
    'unique'               => ': attribute의 값이 이미 있습니다.',
    'uploaded'             => ': attribute 업로드에 실패했습니다.',
    'url'                  => ': attribute 올바른 형식을 지정하십시오.',

    /*
    |--------------------------------------------------------------------------
    | Custom 검증 언어 행
    |--------------------------------------------------------------------------
    |
    | "속성. 규칙"의 약관에 키를 지정하여 사용자 검증
    | 메시지를 정의 할 수 있습니다. 지정된 속성 규칙에 대한 특정
    | 사용자 언어 행을 빠르게 지정할 수 있습니다.
    |
    */

    'custom' => [
        '속성 이름' => [
            '규칙 이름' => '사용자 정의 메시지',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | 사용자 검증 속성 이름
    |--------------------------------------------------------------------------
    |
    | 다음 언어 행은, 예를 들면 "email"대신에 "이메일 주소"처럼,
    | 독자에 친화적 인 표현으로 자리 표시자를 대체하는 지정
    | 언어 줄입니다. 이것은 메시지를 더 깨끗하게 표시하는 데 유용합니다.
    |
    */

    'attributes' => [],

];
