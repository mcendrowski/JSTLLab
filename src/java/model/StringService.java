/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mcendrowski
 */
public class StringService {
    private List<String> strings;

    public StringService() {
    strings = new ArrayList<>();
    strings.add("car");
    strings.add("ship");
    strings.add("plane");
    strings.add("bicycle");
    
    }

    public List<String> getStrings() {
        return strings;
    }

    public void setStrings(List<String> strings) {
        this.strings = strings;
    }
    
    
    
}
