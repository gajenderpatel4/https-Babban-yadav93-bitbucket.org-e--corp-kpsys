package com.kpsys.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class LicensePlateResponseList {
    private List<LicensePlateResponse> items;
}
