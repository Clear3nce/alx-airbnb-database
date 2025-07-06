#Normalization
The booking.total_price and payment.amount represent the same attribute which is regarded as redundancy.
As a plan of action one should consider removing booking.total_price.

1. Data integrity is paramount
2. Long term scalability is vital
3. Multiple properties share the same location frequently
4. application needs complex location-based features

## All tables would adhere to the following:
- Have atomic values (1NF)
- No partial dependencies (2NF)
- No transitive dependencies (3NF)



