package com.kpsys.common.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public abstract class PageableResponse<T> extends BaseResponse {

    private List<T> list;

    private int count;
    private int start;
    private int limit;

}
