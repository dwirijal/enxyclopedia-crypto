# 📊 Advanced Derivatives & Options Trading - Derivatif Lanjutan & Trading Opsi

**Panduan komprehensif trading derivatif dan opsi tingkat lanjutan dengan strategi kompleks, manajemen risiko, dan implementasi di pasar Indonesia**

---

## 🎯 Overview Derivatif Lanjutan

### **Pendahuluan Derivatif**
Derivatif adalah instrumen keuangan yang nilainya berasal dari aset underlying. Mereka memungkinkan investor untuk hedging, spekulasi, dan arbitrase dengan leverage yang tinggi.

#### **Klasifikasi Derivatif**
```
Derivatives Classification Framework:

1. Exchange-Traded vs OTC
Exchange-Traded Derivatives:
- Standardized contracts
- Central clearing
- High liquidity
- Transparent pricing
- Lower counterparty risk
Examples: Futures, Options on exchanges

OTC Derivatives:
- Customized contracts
- Bilateral agreements
- Variable liquidity
- Opaque pricing
- Higher counterparty risk
Examples: Swaps, Forwards, Exotic options

2. Underlying Assets
Equity Derivatives:
- Single stock options/futures
- Index options/futures
- Equity swaps
- Dividend swaps

Commodity Derivatives:
- Commodity futures
- Commodity options
- Commodity swaps
- Weather derivatives

Currency Derivatives:
- Currency forwards
- Currency options
- Currency swaps
- Currency futures

Interest Rate Derivatives:
- Interest rate swaps
- Interest rate options
- Bond futures
- Caps, floors, collars

Credit Derivatives:
- Credit default swaps (CDS)
- Credit-linked notes
- Total return swaps
- Collateralized debt obligations

3. Option Types
Plain Vanilla Options:
- Call options (right to buy)
- Put options (right to sell)
- American exercise (anytime)
- European exercise (expiration only)

Exotic Options:
- Asian options (average price)
- Barrier options (knock-in/out)
- Binary options (all-or-nothing)
- Lookback options (best price)
- Compound options (options on options)
- Chooser options (choose call/put)
- Rainbow options (multiple assets)
```

### **Indonesian Derivatives Market**
```
Indonesian Derivatives Market Landscape:

Exchange-Traded Market:
Jakarta Futures Exchange (JFX):
- Established: 1999
- Products: Currency, commodity, index futures
- Daily volume: $50-100 million
- Members: 80+ brokers
- Regulation: Bappebti

Indonesia Commodity & Derivatives Exchange (ICDX):
- Established: 2009
- Products: Commodity, currency, metals
- Daily volume: $30-80 million
- Members: 60+ brokers
- Regulation: Bappebti

OTC Market Development:
Currency Forwards:
- Market size: $5-10 billion daily
- Participants: Banks, corporations
- Major pairs: USD/IDR, EUR/USD
- Tenor: 1 week to 1 year
- Regulation: Bank Indonesia oversight

Interest Rate Swaps:
- Market size: $2-5 billion notional
- Participants: Banks, corporations
- Benchmark: JIBOR, government bonds
- Tenor: 1-10 years
- Regulation: OJK oversight

Commodity Swaps:
- Market size: $1-3 billion notional
- Products: CPO, coal, rubber
- Participants: Producers, consumers
- Tenor: 3 months to 5 years
- Regulation: Bappebti oversight

Market Growth Trajectory:
2020: $15 billion daily volume
2021: $22 billion (+47%)
2022: $28 billion (+27%)
2023: $35 billion (+25%)
2025 (Projected): $50+ billion
```

---

## 📈 Options Pricing & Greeks

### **Black-Scholes-Merton Framework**

#### **Model Matematika**
```
Black-Scholes-Merton Option Pricing Model:

European Call Option Price:
C = S₀N(d₁) - Ke^(-rT)N(d₂)

European Put Option Price:
P = Ke^(-rT)N(-d₂) - S₀N(-d₁)

Where:
d₁ = [ln(S₀/K) + (r + σ²/2)T] / (σ√T)
d₂ = d₁ - σ√T

Parameters:
S₀ = Current stock price
K = Strike price
r = Risk-free interest rate
T = Time to expiration (years)
σ = Volatility of underlying asset
N(x) = Cumulative normal distribution function

Model Assumptions:
1. No dividends during option life
2. European exercise only
3. Markets are efficient (no arbitrage)
4. No transaction costs
5. Risk-free rate constant
6. Volatility constant
7. Log-normal distribution of returns

Model Limitations in Indonesian Context:
- Dividend payments common
- American-style options available
- Market inefficiencies exist
- Transaction costs significant
- Interest rate volatility
- Volatility clustering
- Fat-tailed returns
- Early exercise premiums
```

#### **Greeks - Sensitivity Analysis**
```
Options Greeks (Risk Measures):

1. Delta (Δ) - Price Sensitivity
Definition: Change in option price per $1 change in underlying
Calculation:
Call Delta: N(d₁)
Put Delta: N(d₁) - 1

Interpretation:
- Delta 0.50: Option moves $0.50 per $1 stock move
- Delta 0.25: Option moves $0.25 per $1 stock move
- Delta -0.30: Put option moves opposite to stock

Delta Hedging:
- Delta neutral portfolio
- Continuous adjustment needed
- Gamma risk consideration
- Transaction costs impact

Application to Indonesian Stocks:
BBCA Call Option (Strike 10,000, 30 days):
- Stock price: 9,800
- Option price: 350
- Delta: 0.45
- Hedge: Short 45 shares per 100 options

2. Gamma (Γ) - Delta Sensitivity
Definition: Change in delta per $1 change in underlying
Calculation: Γ = N'(d₁) / (S₀σ√T)

Interpretation:
- High gamma: Delta changes rapidly
- Low gamma: Delta changes slowly
- Gamma peaks near expiration
- ATM options have highest gamma

Gamma Trading:
- Long gamma benefits from volatility
- Short gamma hurts from volatility
- Gamma scalping strategies
- Risk management essential

3. Theta (Θ) - Time Decay
Definition: Change in option value per day passing
Calculation: Complex partial derivative

Interpretation:
- Negative for long options (time decay)
- Positive for short options (time benefit)
- Accelerates near expiration
- Higher for ATM options

Time Decay Strategies:
- Calendar spreads (long term, short term)
- Iron condor (income from time decay)
- Butterfly spreads (targeted time decay)
- Ratio spreads (decay differential)

4. Vega (ν) - Volatility Sensitivity
Definition: Change in option price per 1% change in volatility
Calculation: Complex partial derivative

Interpretation:
- Long options benefit from volatility increase
- Short options hurt from volatility increase
- Highest for ATM options
- Decreases with time

Volatility Trading:
- Long straddle/strangle (bet on volatility increase)
- Short straddle/strangle (bet on volatility decrease)
- Vega neutral strategies
- Volatility skew trading

5. Rho (ρ) - Interest Rate Sensitivity
Definition: Change in option price per 1% change in interest rates
Calculation: Complex partial derivative

Interpretation:
- Calls benefit from rate increases
- Puts hurt from rate increases
- More significant for long-term options
- Minor impact for short-term options

Indonesian Market Application:
- Bank Indonesia rate changes
- Currency interest rate differentials
- Hedging currency exposure
- Yield curve strategies
```

---

## 🎯 Advanced Options Strategies

### **Volatility Trading Strategies**

#### **Straddle & Strangle Strategies**
```
Volatility Trading Framework:

1. Long Straddle
Strategy Setup:
- Buy ATM call option
- Buy ATM put option
- Same strike price, same expiration
- Maximum risk: Premium paid
- Unlimited profit potential

Breakeven Points:
Upper Breakeven: Strike + Total Premium
Lower Breakeven: Strike - Total Premium

Example: BBCA Straddle (30 days to expiration)
- Current price: Rp 9,800
- Strike price: Rp 9,800
- Call premium: Rp 350
- Put premium: Rp 300
- Total cost: Rp 650

Breakeven Calculation:
Upper BE: Rp 9,800 + Rp 650 = Rp 10,450
Lower BE: Rp 9,800 - Rp 650 = Rp 9,150

Profit Scenarios:
Stock above Rp 10,450: Profit = Stock Price - Rp 10,450
Stock below Rp 9,150: Profit = Rp 9,150 - Stock Price
Stock between Rp 9,150-10,450: Maximum loss Rp 650

Market Conditions for Long Straddle:
- Expected volatility increase
- Earnings announcements
- Major economic data
- Political events
- Merger rumors

2. Short Straddle
Strategy Setup:
- Sell ATM call option
- Sell ATM put option
- Same strike price, same expiration
- Maximum profit: Premium received
- Unlimited risk potential

Example: BBCA Short Straddle
- Strike price: Rp 9,800
- Call premium received: Rp 350
- Put premium received: Rp 300
- Total premium: Rp 650

Breakeven Points: Same as long straddle
Maximum Profit: Rp 650 (if stock at Rp 9,800 at expiration)

Risk Management:
- Stop loss orders essential
- Position sizing small
- Close before major events
- Monitor gamma risk

3. Long Strangle
Strategy Setup:
- Buy OTM call option
- Buy OTM put option
- Different strike prices, same expiration
- Lower cost than straddle
- Wider profit range

Example: BBCA Strangle
- Current price: Rp 9,800
- Call strike: Rp 10,500 (OTM)
- Put strike: Rp 9,000 (OTM)
- Call premium: Rp 150
- Put premium: Rp 120
- Total cost: Rp 270

Breakeven Points:
Upper BE: Rp 10,500 + Rp 270 = Rp 10,770
Lower BE: Rp 9,000 - Rp 270 = Rp 8,730

Advantages over Straddle:
- Lower cost (Rp 270 vs Rp 650)
- Wider breakeven range
- Lower delta exposure
- More time to be right

4. Short Strangle
Strategy Setup:
- Sell OTM call option
- Sell OTM put option
- Different strike prices, same expiration
- Premium income strategy
- Limited but wide profit range

Risk Characteristics:
- Maximum profit: Premium received
- Risk: Unlimited beyond strikes
- Higher probability of profit
- Lower premium than straddle
```

#### **Volatility Skew Trading**
```
Volatility Skew Analysis:

1. Understanding Volatility Skew
Definition:
- Different implied volatilities for different strikes
- OTM puts typically higher IV than OTM calls
- Reflects market fear and crash protection demand

Skew Types:
- Forward skew: Higher IV for higher strikes (commodities)
- Backward skew: Higher IV for lower strikes (equities)
- Smile: Higher IV for OTM options (currency)

Indonesian Market Skew Characteristics:
- Equity index: Moderate backward skew
- Single stocks: Varying by sector
- Currency: Mild smile pattern
- Commodities: Forward skew for some

2. Skew Trading Strategies
Risk Reversal:
- Buy OTM put, sell OTM call (or vice versa)
- Bet on skew changes
- Limited risk, unlimited potential
- Low or zero cost

Example: BBCA Risk Reversal
- Current price: Rp 9,800
- Buy 25 Delta Put: Strike Rp 9,200, Premium Rp 180
- Sell 25 Delta Call: Strike Rp 10,400, Premium Rp 120
- Net cost: Rp 60

Breakeven Analysis:
- If skew flattens: Profit
- If skew steepens: Loss
- Directional exposure: Minimal
- Maximum risk: Rp 60 + commissions

Butterfly Spread:
- Buy 1 OTM put, sell 2 ATM puts, buy 1 OTM call
- Bet on volatility contraction
- Limited risk, limited profit
- High probability trades

Example: BBCA Butterfly
- Buy 1 Put 9,000: Rp 120
- Sell 2 Puts 9,800: Rp 300 each (total Rp 600)
- Buy 1 Call 10,600: Rp 80
- Net cost: Rp 120 + Rp 80 - Rp 600 = -Rp 400 (credit)

Maximum Profit: Rp 400 (if stock at Rp 9,800 at expiration)
Maximum Risk: Rp 600 (difference between strikes minus credit)
Breakeven Points: Rp 9,200 and Rp 10,400

Calendar Spread:
- Buy far-term option, sell near-term option
- Bet on volatility term structure
- Time decay differential
- Directional neutral

Skew Trading in Indonesian Context:
Market Opportunities:
- Earnings season skew expansion
- Political event skew changes
- Sector-specific skew patterns
- Market crash skew spikes

Risk Considerations:
- Liquidity constraints in OTM options
- Wide bid-ask spreads
- Limited market depth
- Early exercise complications
```

### **Directional Strategies with Options**

#### **Leveraged & Protected Strategies**
```
Advanced Directional Strategies:

1. Protective Put Strategy
Strategy Purpose:
- Portfolio protection
- Downside insurance
- Upside participation
- Risk management

Implementation:
- Hold long stock position
- Buy put option as insurance
- Strike price selection based on risk tolerance
- Expiration based on protection period

Example: BBCA Portfolio Protection
- Stock holding: 1,000 shares @ Rp 9,800 = Rp 9,800,000
- Buy put options: Strike Rp 9,500, 30 days, premium Rp 150
- Total insurance cost: 1,000 × Rp 150 = Rp 150,000
- Total position value: Rp 9,950,000

Protection Analysis:
Maximum loss: Rp 300,000 (Rp 9,800,000 - Rp 9,500,000 + Rp 150,000)
Break-even stock price: Rp 9,950
Upside participation: Unlimited above Rp 9,950
Protection period: 30 days

Cost-Benefit Analysis:
- Insurance cost: 1.53% of portfolio value
- Maximum loss limited: 3.06%
- Upside preserved: 100%
- Peace of mind: Priceless

2. Covered Call Strategy
Strategy Purpose:
- Income generation
- Moderate upside capture
- Downside protection (small)
- Enhanced returns

Implementation:
- Hold long stock position
- Sell call option against shares
- Collect premium income
- Obligation to sell at strike

Example: BBCA Covered Call
- Stock holding: 1,000 shares @ Rp 9,800 = Rp 9,800,000
- Sell call options: Strike Rp 10,500, 30 days, premium Rp 200
- Premium income: 1,000 × Rp 200 = Rp 200,000
- Total position: Rp 9,800,000 - Rp 200,000 = Rp 9,600,000 net cost

Outcome Analysis:
If stock < Rp 10,500: Keep stock + premium
If stock > Rp 10,500: Sell at Rp 10,500 + premium
Maximum profit: Rp 700,000 (Rp 10,500 - Rp 9,800 + Rp 200) per share
Break-even: Rp 9,600
Downside protection: Rp 200 per share

3. Collar Strategy
Strategy Purpose:
- Costless protection
- Range-bound returns
- Risk management
- Reduced volatility

Implementation:
- Long stock position
- Buy OTM put option (protection)
- Sell OTM call option (finance protection)
- Zero or minimal cost

Example: BBCA Collar
- Stock position: 1,000 shares @ Rp 9,800
- Buy put: Strike Rp 9,200, premium Rp 100
- Sell call: Strike Rp 10,400, premium Rp 150
- Net credit: Rp 50 per share

Outcome Scenarios:
Stock < Rp 9,200: Put exercised, sell at Rp 9,200
Stock > Rp 10,400: Call exercised, sell at Rp 10,400
Stock Rp 9,200-10,400: Keep stock + Rp 50 premium
Range: Rp 9,200-10,400 (5.9% range)
Cost: Net credit of Rp 50

4. Ratio Spreads
Strategy Types:
- Bull call spread: Buy lower strike call, sell higher strike call
- Bear put spread: Buy higher strike put, sell lower strike put
- Ratio spreads: Different number of options
- Backspreads: More long options than short

Example: BBCA Bull Call Spread
- Buy call: Strike Rp 9,800, premium Rp 350
- Sell call: Strike Rp 10,500, premium Rp 150
- Net debit: Rp 200
- Maximum profit: Rp 500 (Rp 10,500 - Rp 9,800 - Rp 200)
- Maximum risk: Rp 200 (premium paid)
- Breakeven: Rp 10,000
- Probability of profit: 40-50%

5. Diagonal Spreads
Strategy Purpose:
- Time decay optimization
- Directional bias with time edge
- Reduced cost basis
- Flexible risk management

Implementation:
- Buy long-term option (LEAPS)
- Sell short-term option against it
- Different strike prices (diagonal)
- Calendar spread + directional bias

Example: BBCA Diagonal Spread
- Buy Jan 2025 call @ Rp 10,000: Rp 800
- Sell Dec 2023 call @ Rp 10,200: Rp 150
- Net debit: Rp 650
- Time decay benefit: Short option decays faster
- Directional bias: Bullish
- Adjustment flexibility: High
```

---

## 🔄 Advanced Spread Strategies

### **Multi-Leg Options Strategies**

#### **Iron Condor & Butterfly Spreads**
```
Complex Spread Strategies:

1. Iron Condor Strategy
Strategy Structure:
- Sell OTM put spread
- Sell OTM call spread
- Four options total
- Range-bound market bet
- High probability strategy

Setup Components:
- Buy 1 OTM put (lower protection)
- Sell 1 OTM put (short put)
- Sell 1 OTM call (short call)
- Buy 1 OTM call (upper protection)

Example: BBCA Iron Condor (30-day expiration)
Current Price: Rp 9,800
Put Spread:
- Buy Put 9,000: Rp 120
- Sell Put 9,400: Rp 180
- Net credit: Rp 60

Call Spread:
- Sell Call 10,200: Rp 160
- Buy Call 10,600: Rp 100
- Net credit: Rp 60

Total Strategy:
- Net credit: Rp 60 + Rp 60 = Rp 120
- Profit range: Rp 9,400 to Rp 10,200
- Maximum profit: Rp 120
- Maximum risk: Rp 280 (difference between strikes minus credit)
- Breakeven points: Rp 9,280 and Rp 10,320
- Probability of profit: 70-80%

Risk Management:
- Close at 50% max profit
- Adjust if price approaches short strikes
- Position size: 1-2% of portfolio
- Exit before expiration week

2. Butterfly Spread Strategy
Strategy Types:
Long Call Butterfly:
- Buy 1 ITM call
- Sell 2 ATM calls
- Buy 1 OTM call
- Low volatility bet

Long Put Butterfly:
- Buy 1 ITM put
- Sell 2 ATM puts
- Buy 1 OTM put
- Low volatility bet

Example: BBCA Call Butterfly
Current Price: Rp 9,800
- Buy 1 Call 9,400: Rp 500
- Sell 2 Calls 9,800: Rp 350 each (total Rp 700)
- Buy 1 Call 10,200: Rp 200
- Net debit: Rp 500 + Rp 200 - Rp 700 = Rp 0 (zero cost)

Maximum Profit: Rp 400 (difference between strikes)
Maximum Risk: Rp 400 (if stock not at Rp 9,800)
Breakeven points: Rp 9,400 and Rp 10,200
Probability of maximum profit: 25-30%
Strategy benefit: High reward-to-risk ratio

3. Calendar Spread Strategy
Strategy Purpose:
- Time decay differential
- Volatility term structure play
- Directional neutral bias
- Income generation

Implementation:
- Buy far-month option
- Sell near-month option
- Same strike price
- Different expiration dates

Example: BBCA Calendar Spread
- Buy Jan 2024 Call @ Rp 9,800: Rp 800
- Sell Dec 2023 Call @ Rp 9,800: Rp 300
- Net debit: Rp 500

Strategy Dynamics:
- Time decay: Short option decays faster
- Volatility: Benefits from volatility increase
- Directional: Slightly bullish
- Maximum profit: At expiration of short option
- Risk: Limited to net debit
- Adjustment: Roll short option forward

4. Ratio Spread Strategy
Strategy Structure:
- Buy and sell different quantities
- Directional bias with leverage
- Unlimited risk potential
- High reward potential

Types:
Call Ratio Spread:
- Buy 1 ATM call
- Sell 2 OTM calls
- Neutral to bearish bias
- Credit or low debit

Put Ratio Spread:
- Buy 1 ATM put
- Sell 2 OTM puts
- Neutral to bullish bias
- Credit or low debit

Example: BBCA Call Ratio Spread
Current Price: Rp 9,800
- Buy 1 Call @ Rp 9,800: Rp 350
- Sell 2 Calls @ Rp 10,200: Rp 150 each (total Rp 300)
- Net credit: Rp 50

Profit Scenarios:
Stock < Rp 9,800: Maximum profit Rp 50
Stock = Rp 10,200: Maximum profit Rp 450
Stock > Rp 10,200: Unlimited risk (2 calls short)
Breakeven: Rp 10,250
Risk management: Essential due to unlimited upside risk
```

#### **Exotic Options & Structured Products**
```
Exotic Options Strategies:

1. Barrier Options
Types:
- Knock-In: Option activates if barrier hit
- Knock-Out: Option deactivates if barrier hit
- Up-and-In/Out: Barrier above current price
- Down-and-In/Out: Barrier below current price

Example: BBCA Knock-Out Call
- Underlying: BBCA stock
- Strike price: Rp 10,000
- Barrier: Rp 9,500 (down-and-out)
- Expiration: 90 days
- Premium: Rp 200 (vs Rp 350 for vanilla)

Payoff Scenarios:
- Stock never touches Rp 9,500: Normal call option
- Stock touches Rp 9,500: Option becomes worthless
- Probability of knockout: 30-40%
- Cost savings: 43% vs vanilla

Applications:
- Cost reduction for hedging
- Directional views with barriers
- Volatility trading with barriers
- Tail risk management

2. Asian Options
Features:
- Payoff based on average price
- Path-dependent options
- Lower volatility (averaging effect)
- Cost less than vanilla options

Types:
- Average Price: Strike fixed, average price determines payoff
- Average Strike: Average price becomes strike
- Geometric average: More accurate calculation
- Arithmetic average: Simpler calculation

Example: BBCA Asian Call Option
- Strike price: Rp 10,000
- Averaging period: Last 30 days
- Current price: Rp 9,800
- Vanilla premium: Rp 350
- Asian premium: Rp 250 (29% savings)

Applications:
- Hedging periodic cash flows
- Reducing timing risk
- Lower cost strategies
- Volatility management

3. Binary Options
Features:
- Fixed payoff if condition met
- All-or-nothing payoff
- High leverage potential
- Very high risk

Types:
- Cash-or-Nothing: Fixed cash amount
- Asset-or-Nothing: Fixed asset value
- One-Touch: Pays if barrier touched
- No-Touch: Pays if barrier not touched

Example: BBCA One-Touch Binary
- Barrier: Rp 10,500
- Payoff: Rp 1,000 if touched
- Probability: 30%
- Fair value: Rp 300
- Maximum risk: Rp 300
- Maximum return: 233%

Risk Considerations:
- High probability of loss
- Gambling-like characteristics
- Limited hedging utility
- Regulatory restrictions

4. Basket Options
Features:
- Options on multiple assets
- Correlation-dependent pricing
- Diversification benefits
- Complex valuation

Applications:
- Index tracking strategies
- Sector rotation plays
- Correlation trading
- Portfolio protection

Example: Indonesian Banking Basket Option
- Basket: BBCA (50%), BBRI (30%), BMRI (20%)
- Strike price: Basket value + 10%
- Expiration: 90 days
- Correlation impact: Significant for pricing
- Hedging application: Sector protection

5. Structured Products
Types:
- Principal-Protected Notes
- Market-Linked Certificates
- Reverse Convertibles
- autocallable Notes

Example: BBCA Autocallable Note
- Principal: Rp 100,000,000
- Underlying: BBCA stock
- Autocall barrier: Rp 10,500
- Coupon: 12% annually
- Maturity: 1 year
- Autocall frequency: Quarterly

Payoff Scenarios:
- If BBCA > Rp 10,500 any quarter: Note called with coupon
- If never called: Principal returned (protected)
- Maximum return: 12% per annum
- Minimum return: 0% (principal protected)

Indonesian Market Applications:
- Capital protected investments
- Enhanced yield products
- Risk management tools
- Retail investor products
```

---

## 💼 Risk Management & Position Management

### **Advanced Risk Metrics**

#### **Portfolio Level Risk Management**
```
Comprehensive Options Risk Management:

1. Value at Risk (VaR) for Options
Methodologies:
- Historical Simulation VaR
- Parametric VaR (Delta-Normal)
- Monte Carlo Simulation VaR
- Full Revaluation VaR

Options-Specific Considerations:
- Non-linear payoff profiles
- Volatility risk (Vega)
- Time decay (Theta)
- Higher-order Greeks (Gamma, Vanna, Volga)

Example VaR Calculation:
Portfolio: BBCA options position
- Long 100 calls @ Rp 9,800
- Delta: 0.45, Gamma: 0.02, Vega: 0.15
- Position value: Rp 35,000,000
- Daily volatility: 1.5%

VaR Calculation (95% confidence):
- Delta-normal VaR: Rp 35M × 0.45 × 1.5% × 1.65 = Rp 390,000
- Monte Carlo VaR: Rp 450,000 (includes gamma effect)
- Historical VaR: Rp 480,000 (includes actual movements)

2. Stress Testing Framework
Stress Scenarios:
- Market crash: -30% underlying move
- Volatility spike: +100% IV increase
- Interest rate shock: +300bps
- Liquidity crisis: Bid-ask +500%

Scenario Analysis:
- Worst-case loss estimation
- Margin requirement stress
- Liquidity needs assessment
- Recovery time analysis

Example: BBCA Options Stress Test
Base Scenario:
- Stock price: Rp 9,800
- Implied volatility: 25%
- Position value: Rp 35,000,000

Stress Scenarios:
1. Market Crash:
   - Stock: -30% to Rp 6,860
   - IV: +100% to 50%
   - Option value: Rp 5,000,000
   - Loss: Rp 30,000,000 (86%)

2. Volatility Spike:
   - Stock: Rp 9,800 (unchanged)
   - IV: +100% to 50%
   - Option value: Rp 58,000,000
   - Gain: Rp 23,000,000 (66%)

3. Combination Stress:
   - Stock: -20% to Rp 7,840
   - IV: +50% to 37.5%
   - Option value: Rp 8,000,000
   - Loss: Rp 27,000,000 (77%)

3. Greeks-Based Risk Management
Greeks Position Limits:
- Delta limit: ±10% of portfolio
- Gamma limit: ±5% of portfolio
- Vega limit: ±15% of portfolio
- Theta limit: ±2% daily decay

Example Position Limits:
Portfolio size: Rp 1,000,000,000
- Delta limit: ±Rp 100,000,000
- Gamma limit: ±Rp 50,000,000
- Vega limit: ±Rp 150,000,000
- Theta limit: ±Rp 20,000,000 daily

Dynamic Hedging:
- Delta rebalancing frequency
- Gamma exposure monitoring
- Vega neutralization strategies
- Theta decay management
```

#### **Position Sizing & Capital Allocation**
```
Advanced Position Sizing for Options:

1. Kelly Criterion for Options
Modified Kelly Formula:
f* = (p × w - q × l) / w
Where:
- p = Probability of winning
- q = Probability of losing (1-p)
- w = Average win size
- l = Average loss size

Options Application:
Example BBCA Straddle:
- p (probability of profit): 60%
- w (average win): Rp 400,000
- l (average loss): Rp 300,000
- q = 40%

Kelly Calculation:
f* = (0.6 × 400,000 - 0.4 × 300,000) / 400,000
f* = (240,000 - 120,000) / 400,000
f* = 120,000 / 400,000 = 0.30 or 30%

Practical Application:
- Full Kelly: 30% of capital
- Half Kelly: 15% of capital
- Quarter Kelly: 7.5% of capital
- Conservative: 5% of capital

2. Optimal F Strategy
Ralph Vince's Method:
- Calculate largest loss
- Determine optimal fraction
- Account for multiple positions
- Consider correlation effects

Example Calculation:
- Largest historical loss: Rp 500,000
- Account size: Rp 10,000,000
- Optimal f: 0.15 (15%)
- Position size: Rp 1,500,000

3. Volatility-Adjusted Sizing
Methodology:
- Higher volatility → smaller positions
- Lower volatility → larger positions
- Normalized risk exposure
- Consistent risk budgets

Formula:
Position Size = (Target Risk × Portfolio Value) / (Volatility × Option Delta)

Example:
- Target risk: 2% of Rp 10M = Rp 200,000
- Option volatility: 25%
- Option delta: 0.50
- Position size = (Rp 200,000) / (0.25 × 0.50) = Rp 1,600,000

4. Correlation-Based Position Sizing
Portfolio Correlation Considerations:
- High correlation: Smaller individual positions
- Low correlation: Larger individual positions
- Diversification benefits
- Risk concentration limits

Example Portfolio:
- BBCA options: Delta 0.45
- BBRI options: Delta 0.40
- Correlation: 0.85 (high)
- Individual position limit: 5% each
- Combined limit: 8% (not 10%)

5. Tail Risk Allocation
Black Swan Protection:
- Allocate 5-10% to tail risk hedging
- Far OTM options
- Long volatility positions
- Crash protection strategies

Example Tail Hedge:
- Portfolio value: Rp 100,000,000
- Tail risk allocation: 5% = Rp 5,000,000
- Buy OTM puts: Delta -0.10, 6 months
- Protection: Significant market crash
- Cost: Annual drag of 1-2%
```

---

## 🏢 Institutional Applications

### **Hedging Strategies for Corporations**

#### **Corporate Hedging Framework**
```
Corporate Derivatives Usage:

1. Foreign Exchange Hedging
Indonesian Corporate FX Exposure:
- Importers: USD payables exposure
- Exporters: USD receivables exposure
- Foreign currency debt
- Multi-currency operations

Hedging Instruments:
- Currency forwards
- Currency options
- Currency swaps
- Structured products

Case Study: Indonesian Manufacturer
Company Profile:
- Annual revenue: Rp 500 billion
- USD imports: $50 million annually
- Exchange rate risk: High
- Hedging policy: 50% coverage

Hedging Strategy:
- 50% forwards: Fixed rate certainty
- 30% options: Flexibility + protection
- 20% unhedged: Market participation
- Rolling 12-month hedging program

Implementation:
Forwards Component:
- Notional: $25 million
- Tenor: 12 months rolling
- Forward rate: Locked in
- Cost: Bid-ask spread (0.5-1%)

Options Component:
- Notional: $15 million
- Instrument: USD call options
- Strike: ATM + 2%
- Premium: 2-3% annually

Cost-Benefit Analysis:
- Hedging cost: 1.5-2% annually
- Risk reduction: Significant
- Budget certainty: Improved
- Competitive advantage: Stable pricing

2. Commodity Price Hedging
Indonesian Commodity Exposure:
- CPO producers: Price risk
- Coal miners: Price volatility
- Food processors: Input costs
- Manufacturing: Raw materials

Hedging Strategies:
- Futures contracts (exchange-traded)
- Commodity swaps (OTC)
- Options strategies
- Structured products

Case Study: CPO Producer
Company Profile:
- Production: 500,000 tons annually
- Price volatility: 30-40% annually
- Cost structure: Fixed costs dominant
- Hedging objective: Revenue stability

Hedging Program:
- Base hedge: 60% of production via futures
- Optional hedge: 20% via options
- Spot market: 20% opportunistic
- Roll strategy: Quarterly rolling

Risk Management:
- Position limits: Maximum 80% hedged
- Margin requirements: Adequate capital
- Counterparty risk: Diversified clearing members
- Documentation: ISDA agreements

3. Interest Rate Hedging
Corporate Interest Rate Exposure:
- Floating rate debt
- Investment portfolio
- Working capital financing
- Long-term project financing

Hedging Instruments:
- Interest rate swaps
- Interest rate options (caps, floors)
- Swaptions
- Forward rate agreements

Case Study: Indonesian Property Developer
Company Profile:
- Outstanding debt: Rp 2 trillion
- Floating rate portion: 70%
- Interest rate sensitivity: High
- Cash flow visibility: Critical

Hedging Strategy:
- Swap 50% of floating to fixed
- Buy interest rate cap on remaining
- Maturity matching: 5-7 years
- Counterparty: Multiple banks

Implementation:
Swap Component:
- Notional: Rp 700 billion
- Receive: Floating rate (JIBOR + margin)
- Pay: Fixed rate (to be determined)
- Tenor: 5 years
- Documentation: ISDA agreement

Cap Component:
- Notional: Rp 700 billion
- Strike Rate: JIBOR + 4%
- Premium: 0.5-1% annually
- Protection: Rate increases above strike

Benefits:
- Cash flow certainty: 50% fixed
- Upside participation: Floating portion
- Downside protection: Cap structure
- Financial flexibility: Maintained
```

#### **Portfolio Insurance Strategies**
```
Institutional Portfolio Protection:

1. Equity Portfolio Protection
Institutional Needs:
- Downside protection
- Upside participation
- Cost efficiency
- Liquidity preservation

Protection Strategies:
- Protective puts (costly but complete)
- Collars (cost reduction with upside cap)
- Put spreads (reduced cost, partial protection)
- Volatility selling (income generation)

Case Study: Indonesian Pension Fund
Portfolio Profile:
- Assets under management: Rp 5 trillion
- Equity allocation: 60% (Rp 3 trillion)
- Risk tolerance: Moderate
- Time horizon: Long-term

Protection Strategy:
Core Protection (40% of equity):
- 5% OTM puts, 6-month expiration
- Cost: 1.5-2% annually
- Protection: Below 95% of current value
- Rolling quarterly

Enhanced Protection (20% of equity):
- Collar strategy
- Long 7% OTM puts
- Short 10% OTM calls
- Net cost: Zero or small credit
- Range: 93% to 110% of current value

Income Generation (20% of equity):
- Covered call writing
- 5-8% OTM calls
- Premium income: 3-4% annually
- Upside limited beyond strike

Monitoring and Adjustment:
- Monthly review of protection levels
- Rebalance based on market conditions
- Cost-benefit analysis
- Regulatory compliance

2. Fixed Income Portfolio Protection
Risks in Fixed Income:
- Interest rate risk
- Credit risk
- Inflation risk
- Liquidity risk

Protection Strategies:
Interest Rate Protection:
- Interest rate swaps (fixed-for-floating)
- Bond futures (duration hedging)
- Interest rate options (caps, floors)
- Swaptions (option on swaps)

Credit Protection:
- Credit default swaps (CDS)
- Credit spread options
- Diversification by rating
- Sector allocation

Case Study: Indonesian Insurance Company
Portfolio Profile:
- Fixed income assets: Rp 8 trillion
- Average duration: 7 years
- Credit quality: Investment grade
- Liability matching required

Protection Strategy:
Interest Rate Hedging:
- Receive-fixed swaps on 40% of portfolio
- Pay-floating to match liabilities
- Tenor: 5-10 years
- Counterparty: High-quality banks

Credit Protection:
- CDS protection on 20% of portfolio
- Focus on lower-rated holdings
- Cost: 50-100 bps annually
- Documentation: ISDA agreements

Inflation Protection:
- Inflation-linked bonds: 10% allocation
- Commodities: 5% allocation
- Real estate: 5% allocation
- TIPS linkage: Where available

3. Alternative Investment Hedging
Private Equity/Venture Capital:
- Illiquidity risk
- Valuation risk
- Concentration risk
- Exit timing risk

Real Estate:
- Market risk
- Interest rate risk
- Liquidity risk
- Location risk

Hedging Approaches:
- Portfolio-level diversification
- Liquidity reserves
- Risk budgeting
- Stress testing
```

---

## 🇮🇩 Indonesian Market Implementation

### **Local Market Considerations**

#### **Indonesian Derivatives Market Structure**
```
Indonesian Market Specifics:

1. Exchange-Traded Derivatives
Jakarta Futures Exchange (JFX):
- Established: 1999
- Products: FX, commodity, index futures
- Daily volume: $50-100 million
- Members: 80+ brokers
- Clearing: Indonesian Clearing House (KBI)

Available Products:
Currency Futures:
- USD/IDR, EUR/USD, JPY/USD
- Contract size: $10,000
- Margin: 5-10%
- Settlement: Physical delivery

Commodity Futures:
- Gold, crude oil, CPO
- Contract sizes vary
- Margin: 8-15%
- Settlement: Physical or cash

Index Futures:
- IDX Composite futures
- Contract size: Rp 10 million
- Margin: 10-15%
- Settlement: Cash

Indonesia Commodity & Derivatives Exchange (ICDX):
- Established: 2009
- Products: Commodity, currency, metals
- Daily volume: $30-80 million
- Members: 60+ brokers
- Clearing: Indonesian Clearing House

2. OTC Derivatives Market
Market Size:
- FX forwards: $5-10 billion daily
- Interest rate swaps: $2-5 billion notional
- Commodity swaps: $1-3 billion notional
- Equity derivatives: $500 million-1 billion

Participants:
- Banks: Market makers, 70% share
- Corporations: End users, 25% share
- Institutions: Asset managers, 5% share

Documentation Standards:
- ISDA Master Agreements
- Indonesian FX confirmation templates
- Commodity swap documentation
- Equity option termsheets

3. Regulatory Framework
Regulators:
- Bappebti (Commodity Futures Trading Regulatory Agency)
- OJK (Financial Services Authority)
- Bank Indonesia (Central Bank)
- Ministry of Trade

Key Regulations:
- Bappebti Regulation on Futures Trading
- OJK Regulation on Derivatives Trading
- Bank Indonesia FX Transaction Rules
- Tax Treatment of Derivatives

Tax Considerations:
- Capital gains tax: 0.1% for equities, final
- Income tax: 22% for corporations
- VAT: 10% on services
- Withholding tax: 20% for foreign parties

4. Market Access Requirements
Account Opening:
- Individual investors: Minimum age 18, ID required
- Corporate investors: Company documents, tax ID
- Foreign investors: Additional documentation required
- Qualified investors: Higher minimums, broader access

Trading Requirements:
- Knowledge assessment test
- Risk acknowledgement
- Margin requirements
- Position limits

Clearing and Settlement:
- T+0 for exchange-traded futures
- T+2 for OTC transactions
- Margin calls: Real-time monitoring
- Default procedures: Clearing house guarantee
```

#### **Local Strategy Adaptations**
```
Indonesian Market Strategy Adaptations:

1. Currency Hedging Strategies
IDR/USD Characteristics:
- High volatility: 8-12% annually
- Emerging market premium
- Central bank intervention
- Correlation with commodities

Adapted Strategies:
- NDF (Non-Deliverable Forward) usage
- Option strategies with barrier protection
- Correlation-based hedges
- Dynamic hedging approaches

Case Study: Indonesian Exporter
- USD receivables: $10 million monthly
- Current rate: Rp 15,500/USD
- Budget rate: Rp 15,000/USD
- Risk tolerance: Moderate

Hedging Strategy:
- 30% forwards at Rp 15,450
- 30% options collar (15,000/16,000)
- 20% NDFs for flexibility
- 20% unhedged for opportunity

2. Interest Rate Strategies
Indonesian Rate Environment:
- JIBOR (Jakarta Interbank Offered Rate)
- Government bond yields (SUN)
- Central bank policy rate (BI Rate)
- Inflation expectations

Strategy Adaptations:
- Interest rate swaps with Indonesian banks
- Bond futures for duration management
- Inflation-linked products where available
- Cross-currency swaps for foreign currency debt

3. Equity Derivatives Strategies
Market Characteristics:
- High retail participation
- Volatility patterns
- Seasonal factors
- Regulatory impact

Adapted Approaches:
- Single stock options (limited availability)
- Index futures for market exposure
- Structured products for retail
- Synthetic replication strategies

4. Commodity Strategies
Indonesian Commodity Focus:
- CPO (Crude Palm Oil): Global price leader
- Coal: Export commodity, domestic consumption
- Rubber: Industrial commodity, seasonal patterns
- Gold: Safe haven, inflation hedge

Local Market Strategies:
- CPO futures trading on international exchanges
- Physical market arbitrage opportunities
- Seasonal spread strategies
- Government policy impact analysis
```

---

## 🎯 Practical Implementation Guide

### **Building Derivatives Trading Business**

#### **Step-by-Step Implementation**
```
Derivatives Trading Business Development:

Phase 1: Foundation (Months 1-3)
Month 1: Market Research & Strategy
- Indonesian market analysis
- Strategy selection
- Risk appetite assessment
- Regulatory compliance review

Month 2: Infrastructure Setup
- Trading platform selection
- Data feed integration
- Risk management systems
- Compliance procedures

Month 3: Team Building
- Hire traders (quantitative background)
- Risk management specialist
- Operations/support staff
- Compliance officer

Phase 2: Testing (Months 4-6)
Month 4-5: Paper Trading
- Strategy backtesting
- System integration testing
- Risk simulation
- Performance measurement

Month 6: Small Scale Live Trading
- Reduced capital allocation
- Real market testing
- System validation
- Team training

Phase 3: Scaling (Months 7-12)
Month 7-9: Gradual Expansion
- Capital increase
- Strategy expansion
- Team growth
- Process optimization

Month 10-12: Full Operation
- Target capital deployment
- Multiple strategies
- Institutional clients
- Performance optimization

Required Resources:
Human Capital:
- Quant traders: 2-3 (Rp 50-100 juta/month each)
- Risk manager: 1 (Rp 40-60 juta/month)
- Operations: 2 (Rp 30-50 juta/month each)
- Compliance: 1 (Rp 40-60 juta/month)

Technology Infrastructure:
- Trading platform: $50,000-100,000
- Data feeds: $20,000-50,000/year
- Risk systems: $30,000-80,000
- Backup systems: $20,000-40,000

Capital Requirements:
- Initial capital: Rp 5-10 miliar
- Operating capital: Rp 2-3 miliar
- Risk capital: Rp 3-7 miliar
- Total: Rp 10-20 miliar

Regulatory Licensing:
- Bappebti license: Rp 50-100 juta + capital requirements
- OJK registration: Varies by business type
- Tax registration: Required
- Bank accounts: Multiple currencies

Expected Timeline to Profitability:
- Year 1: Setup phase, losses expected
- Year 2: Break-even possible
- Year 3: Profitable operation
- Year 4+: Scaling and optimization

Success Factors:
1. Market Knowledge
   - Indonesian market expertise
   - Regulatory understanding
   - Relationship network
   - Cultural awareness

2. Risk Management
   - Robust risk systems
   - Conservative position sizing
   - Diversification strategies
   - Stress testing procedures

3. Technology Infrastructure
   - Reliable trading systems
   - Low-latency execution
   - Comprehensive risk tools
   - Backup and recovery

4. Human Capital
   - Experienced traders
   - Strong risk management
   - Operational excellence
   - Compliance awareness
```

---

**Created**: 23 September 2025
**Last Updated**: 23 September 2025
**Category**: 14-Corporate-Finance
**Tags**: #derivatives #options-trading #risk-management #hedging #indonesia #quantitative-finance

*🔗 Related: [[📈-Advanced-Technical-Analysis-Indonesia]] [[🔢-Quantitative-Finance-Strategies]] [[💚-Sustainable-ESG-Investing]]*
*📚 Next: [[Global-Macro-Strategies]] [[Wealth-Management-Family-Office]]*