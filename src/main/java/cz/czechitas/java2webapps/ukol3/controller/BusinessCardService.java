package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.BusinessCard;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class BusinessCardService {
    private final List<BusinessCard> businessCardList = new ArrayList<>();

    public BusinessCardService() {
        businessCardList.add(new BusinessCard("Dita (Přikrylová) Formánková", "Czechitas z.s.", "Václavské náměstí 837/11", "11000 Praha1", "dita@czechitas.cz", "+420 800123456", "czechitas.cz"));
        businessCardList.add(new BusinessCard("Barbora Bühnová", "Czechitas z.s.", "Václavské náměstí 837/11", "11000 Praha1", "", "+420 800123456", "czechitas.cz"));
        businessCardList.add(new BusinessCard("Monika Ptáčníková", "Czechitas z.s.", "Václavské náměstí 837/11", "11000 Praha1", "monika@czechitas.cz", "+420 800123456", "czechitas.cz"));
        businessCardList.add(new BusinessCard("Mirka Zatloukalová", "Czechitas z.s.", "Václavské náměstí 837/11", "11000 Praha1", "mirka@czechitas.cz", "", "czechitas.cz"));
    }

    public List<BusinessCard> getAll() {
        return businessCardList;
    }

    public BusinessCard getById(int id) {
        return businessCardList.get(id);
    }
}
