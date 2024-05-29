# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"Eu24.13","system":"readv2"},{"code":"Eu33311","system":"readv2"},{"code":"Eu23100","system":"readv2"},{"code":"Eu13500","system":"readv2"},{"code":"E00..00","system":"readv2"},{"code":"Eu23z00","system":"readv2"},{"code":"Eu23000","system":"readv2"},{"code":"Eu23200","system":"readv2"},{"code":"Eu30212","system":"readv2"},{"code":"Eu30100","system":"readv2"},{"code":"E13z.11","system":"readv2"},{"code":"Eu14500","system":"readv2"},{"code":"38C1400","system":"readv2"},{"code":"Eu20y13","system":"readv2"},{"code":"Eu23300","system":"readv2"},{"code":"Eu30200","system":"readv2"},{"code":"Eu23212","system":"readv2"},{"code":"Eu12500","system":"readv2"},{"code":"Eu2y.00","system":"readv2"},{"code":"Eu15500","system":"readv2"},{"code":"Eu32311","system":"readv2"},{"code":"Eu30211","system":"readv2"},{"code":"Eu16500","system":"readv2"},{"code":"Eu23y00","system":"readv2"},{"code":"Eu18500","system":"readv2"},{"code":"SL93.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('psychoses-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotic-psychoses-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotic-psychoses-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotic-psychoses-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
