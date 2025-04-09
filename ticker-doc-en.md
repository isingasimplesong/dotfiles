# Ticker dashboard documentation

## Default Watchlist

This watchlist provides a quick, high-level snapshot of key global markets and indicators.

* **`^GSPC` (S&P 500 Index)**: Broad benchmark for large-cap US stocks. Represents general US market health. *Interpretation*: Rise indicates positive sentiment/growth in the US market; Fall suggests negative sentiment/contraction.
* **`^IXIC` (NASDAQ Composite Index)**: Tech-heavy US stock index. Indicator of growth/tech sector sentiment. *Interpretation*: Rise often signals positive sentiment towards technology and growth stocks; Fall suggests waning confidence in these sectors.
* **`^STOXX50E` (EURO STOXX 50 Index)**: Blue-chip index for the Eurozone. Gauges core European economic/market sentiment. *Interpretation*: Rise indicates positive sentiment in major Eurozone economies; Fall suggests concern.
* **`^FCHI` (CAC 40 Index)**: Benchmark French stock market index. *Interpretation*: Rise indicates positive sentiment in the French market; Fall suggests concern.
* **`^HSI` (Hang Seng Index)**: Benchmark Hong Kong stock index. Reflects Hong Kong and, indirectly, Chinese market sentiment. *Interpretation*: Rise indicates positive sentiment in Hong Kong/China; Fall suggests concern.
* **`^VIX` (CBOE Volatility Index)**: Market "fear gauge" measuring expected S&P 500 volatility over the next 30 days. *Interpretation*: Higher value indicates increased fear, uncertainty, and expected volatility; Lower value suggests complacency or stability.
* **`LQD` (iShares iBoxx $ Inv. Grade Corp Bond ETF)**: Tracks high-quality US corporate bonds. *Interpretation*: Price Fall suggests widening credit spreads (higher perceived risk for corporations borrowing money); Price Rise indicates narrowing spreads and increased confidence in corporate creditworthiness.
* **`TIP` (iShares TIPS Bond ETF)**: Tracks US Treasury Inflation-Protected Securities. *Interpretation*: Price Rise generally indicates increasing market expectations for future inflation; Price Fall suggests decreasing inflation expectations.
* **`CL=F` (Crude Oil WTI Futures)**: US benchmark for crude oil prices (West Texas Intermediate). *Interpretation*: Rise suggests increasing energy costs, potential inflation pressure, strong demand, or supply concerns; Fall suggests weaker demand, oversupply, or easing inflation pressure.
* **`GC=F` (Gold Futures)**: Price of gold futures. Often seen as a safe-haven asset and inflation hedge. *Interpretation*: Rise often indicates increased risk aversion, geopolitical uncertainty, inflation fears, or a weakening US dollar; Fall suggests increased risk appetite or a stronger US dollar.
* **`XLE` (Energy Select Sector SPDR Fund)**: Tracks major US energy stocks (oil, gas, services). *Interpretation*: Performance reflects trends in oil/gas prices, energy demand, and investment in the sector. Often correlated with `CL=F`.
* **`XLF` (Financial Select Sector SPDR Fund)**: Tracks major US financial stocks (banks, insurance, etc.). Indicator of banking health, credit conditions, and interest rate sensitivity. *Interpretation*: Rise often signals confidence in the economy and financial system; Fall can indicate stress or concerns about rates/credit.
* **`URTH` (iShares MSCI World ETF)**: Tracks developed market equities globally. Provides a broad view of global equity sentiment. *Interpretation*: Rise indicates positive sentiment across major developed economies; Fall suggests widespread concern.

## Group: Global

This group provides a comprehensive overview of major global stock indices, bond markets (indicating interest rate and risk sentiment), US sector performance, and key regional/global ETFs.

* **Indices (`^BSESN`, `^DJI`, `^FCHI`, `^FTSE`, `^GDAXI`, `^GSPC`, `^HSI`, `^IBEX`, `^IXIC`, `^N225`, `^STOXX50E`, `^000001.SS`, `^AXJO`)**: Each represents the performance of a major stock market in its respective country/region (India, US Blue Chips, France, UK, Germany, US Broad, Hong Kong, Spain, US Tech, Japan, Eurozone, China Mainland, Australia). *Interpretation*: Rise indicates positive sentiment/growth in that specific market; Fall suggests negative sentiment/contraction.
* **Bonds & Inflation**:
  * **`HYG` (US High-Yield Corp Bonds ETF)**: Tracks riskier "junk" bonds. *Interpretation*: Price Rise suggests increased risk appetite among investors (willing to buy riskier debt); Price Fall indicates risk aversion.
  * **`SHY` (US 1-3 Year Treasuries ETF)**: Tracks short-term US government bonds. Sensitive to near-term interest rate expectations. *Interpretation*: Price typically falls as expectations for near-term rate hikes increase; Price rises as expectations for rate cuts increase.
  * **`IEF` (US 7-10 Year Treasuries ETF)**: Tracks medium-term US government bonds. Reflects medium/long-term interest rate expectations. *Interpretation*: Price typically falls as medium/long-term interest rates rise; Price rises as rates fall.
  * **`LQD` (US Investment Grade Corporate Bonds ETF)**: Tracks high-quality US corporate bonds. *Interpretation*: Price Fall suggests widening credit spreads (higher perceived risk); Price Rise indicates narrowing spreads and confidence.
  * **`TLT` (US 20+ Year Treasuries ETF)**: Tracks long-term US government bonds. Reflects long-term rate expectations and economic outlook. *Interpretation*: Price typically falls as long-term interest rates rise; Price rises as rates fall. Often sensitive to long-term growth/inflation outlook.
  * **`TIP` (US Treasury Inflation-Protected Securities ETF)**: Tracks inflation-protected bonds. *Interpretation*: Price Rise indicates higher market expectations for future inflation.
* **Sector ETFs (US) (`SMH`, `XLE`, `XLF`, `XLI`, `XLK`, `XLP`, `XLRE`, `XLU`, `XLV`, `XLY`)**: Track specific sectors of the US economy (Semiconductors, Energy, Financials, Industrials, Technology, Consumer Staples, Real Estate, Utilities, Healthcare, Consumer Discretionary). *Interpretation*: Performance indicates the relative strength/weakness and investor sentiment towards each sector.
* **Regional / Country ETFs (`AAXJ`, `EWG`, `EWJ`, `EWQ`, `INDA`, `MCHI`)**: Track equity markets in specific regions/countries (Asia ex-Japan, Germany, Japan, France, India, China). *Interpretation*: Performance reflects economic health and investor sentiment in those specific areas.
* **Global / Emerging Market ETFs (`ACWI`, `EEM`, `URTH`, `VT`, `VWO`)**: Track broad global or emerging market equities. *Interpretation*: `ACWI`/`VT`/`URTH` provide a view of overall global equity performance (developed or all). `EEM`/`VWO` track emerging markets, often seen as indicators of global growth appetite and risk sentiment. Rise suggests confidence in global growth/risk-taking.
* **Currency & Proxies**:
  * **`EURUSD=X` (EUR/USD Exchange Rate)**: Shows the value of 1 Euro in US Dollars. *Interpretation*: Rise means the Euro is strengthening against the USD; Fall means the Euro is weakening. Reflects relative EU/US economic outlooks and interest rate differentials.
  * **`UUP` (Invesco DB US Dollar Index Bullish Fund ETF)**: Tracks the value of the US Dollar against a basket of major currencies. *Interpretation*: Rise indicates a stronger US Dollar overall; Fall indicates a weaker US Dollar.
* **Volatility & Fear**:
  * **`^VIX` (CBOE Volatility Index)**: "Fear gauge". *Interpretation*: Higher value indicates increased fear/uncertainty; Lower value suggests complacency.
  * **`VXX` (iPath S&P 500 VIX Short-Term Futures ETN)**: Tracks futures contracts on the VIX. Highly volatile and tends to decay over time (contango). *Interpretation*: Moves with expected future volatility, often more pronounced than `^VIX`. Primarily for short-term trading.

## Group: Ressources (Commodities)

This group focuses on raw materials, energy, and agricultural products, which are key inputs for the global economy and indicators of inflation and industrial demand.

* **Broad Commodity ETFs (`DBA`, `DBC`, `DBB`)**: Track baskets of commodities (Agriculture, Broad Mix, Base Metals). *Interpretation*: Provide a general sense of price trends within these categories. `DBC` rise signals broad commodity inflation. `DBB` rise suggests strong industrial demand. `DBA` rise indicates pressure on food prices.
* **Precious Metals (`GC=F`, `PA=F`, `PL=F`, `SI=F`)**: Futures contracts for Gold, Palladium, Platinum, and Silver.
  * **`GC=F` (Gold)**: *Interpretation*: Safe haven, inflation hedge. Rise = risk aversion, inflation fear.
  * **`PA=F` (Palladium)**: Primarily industrial use (auto catalysts). *Interpretation*: Price reflects automotive industry demand and supply constraints (esp. from Russia/South Africa).
  * **`PL=F` (Platinum)**: Industrial (auto catalysts), jewelry, investment. *Interpretation*: Reflects automotive/industrial demand and investment flows.
  * **`SI=F` (Silver)**: Precious metal with significant industrial use. *Interpretation*: Moves somewhat with gold (monetary aspect) but also heavily influenced by industrial demand.
* **Energy (`BZ=F`, `CL=F`, `HO=F`, `NG=F`, `RB=F`)**: Futures contracts for Brent Crude (international oil), WTI Crude (US oil), Heating Oil, Natural Gas, and RBOB Gasoline.
  * **`BZ=F` / `CL=F` (Oil)**: *Interpretation*: Key energy benchmarks. Rise = inflation pressure, demand/supply concerns.
  * **`HO=F` (Heating Oil)**: Proxy for diesel and jet fuel demand/prices. *Interpretation*: Rise suggests strong industrial/transport activity or winter heating demand.
  * **`NG=F` (Natural Gas)**: Key heating/power generation fuel. *Interpretation*: Very volatile, sensitive to weather (heating/cooling demand) and storage levels.
  * **`RB=F` (Gasoline)**: Proxy for consumer driving demand. *Interpretation*: Rise often indicates strong consumer activity/travel, especially during driving seasons.
* **Industrial Metals (`AL=F`, `HG=F`, `NI=F`, `ZN=F`)**: Futures contracts for Aluminum, Copper, Nickel, and Zinc. (Note: Futures may have low liquidity; ETN proxies exist like JJU, JJN, JJT).
  * **`AL=F` (Aluminum)**: Used in construction, transport, packaging. *Interpretation*: Rise suggests strong industrial/manufacturing activity.
  * **`HG=F` (Copper)**: "Dr. Copper," barometer of global economic health. *Interpretation*: Rise often signals expectations of strong global manufacturing and construction.
  * **`NI=F` (Nickel)**: Used in stainless steel, batteries (EVs). *Interpretation*: Rise reflects demand from stainless steel production and the growing EV market.
  * **`ZN=F` (Zinc)**: Primarily used for galvanizing steel (anti-rust). *Interpretation*: Rise indicates demand in construction and infrastructure.
* **Grains (`O=F`, `RR=F`, `ZC=F`, `ZL=F`, `ZS=F`, `ZW=F`)**: Futures contracts for Oats, Rough Rice, Corn, Soybean Oil, Soybeans, and Wheat. *Interpretation*: Prices reflect global food supply/demand, weather conditions, animal feed usage, and biofuel policies (esp. Corn/Soybean Oil). Rise indicates potential food inflation.
* **Softs (Agricultural) (`CC=F`, `CT=F`, `KC=F`, `LB=F`, `SB=F`)**: Futures contracts for Cocoa, Cotton, Coffee, Lumber, and Sugar. *Interpretation*: Reflect specific agricultural markets, sensitive to weather, crop yields, consumer demand (Cotton, Coffee, Cocoa), housing market (Lumber), and biofuel policies (Sugar).
* **Livestock (`GF=F`, `HE=F`, `LE=F`)**: Futures contracts for Feeder Cattle, Lean Hogs, and Live Cattle. *Interpretation*: Reflect prices in the meat industry, influenced by feed costs (like Corn/Soybeans), herd sizes, and consumer demand for beef and pork.
* **Other Materials (`URNM`)**:
  * **`URNM` (Sprott Uranium Miners ETF)**: Tracks companies mining uranium. *Interpretation*: Proxy for sentiment and demand related to nuclear energy. Rise suggests increasing interest/investment in nuclear power or supply concerns for uranium.

## Group: Devises (Currencies)

This group focuses on major currency exchange rates (Forex or FX) and related indicators, reflecting relative economic strengths, interest rate differentials, and risk flows.

* **Major Pairs (vs USD) (`EURUSD=X`, `USDJPY=X`, `GBPUSD=X`, `USDCAD=X`, `AUDUSD=X`, `USDCHF=X`, `NZDUSD=X`)**: Show the value of one currency relative to the US Dollar.
  * *For `AAABBB=X`*: A **rise** means the base currency (AAA) is getting stronger against the quote currency (BBB). A **fall** means AAA is weakening against BBB.
  * `EURUSD=X`: Euro vs USD. Key EU/US barometer.
  * `USDJPY=X`: USD vs Japanese Yen. *Interpretation*: Yen is often a safe haven; a FALL in USDJPY (stronger Yen) can indicate risk aversion. A RISE (weaker Yen) often accompanies risk appetite.
  * `GBPUSD=X` ("Cable"): British Pound vs USD. UK/US sentiment.
  * `USDCAD=X` ("Loonie"): USD vs Canadian Dollar. *Interpretation*: CAD is commodity-sensitive (esp. oil); a FALL in USDCAD (stronger CAD) can occur with rising oil prices or risk appetite.
  * `AUDUSD=X`: Australian Dollar vs USD. *Interpretation*: AUD is often a proxy for commodity prices and global risk appetite. Rise = risk-on/strong commodities.
  * `USDCHF=X`: USD vs Swiss Franc. *Interpretation*: CHF is a major safe haven; a FALL in USDCHF (stronger Franc) often indicates risk aversion.
  * `NZDUSD=X`: New Zealand Dollar vs USD. Similar to AUD, a commodity/risk proxy.
* **Dollar Index (`UUP`)**:
  * **`UUP` (Invesco DB US Dollar Index Bullish Fund)**: ETF tracking USD value against a basket of major currencies. *Interpretation*: Rise indicates a strengthening US Dollar overall; Fall indicates a weakening USD.
* **Key Crosses (`EURGBP=X`, `EURJPY=X`, `GBPJPY=X`, `EURCHF=X`, `AUDJPY=X`, `CADJPY=X`)**: Currency pairs that do not involve the US Dollar directly.
  * *Interpretation follows `AAABBB=X` logic*: Rise = AAA stronger; Fall = AAA weaker.
  * `EURGBP=X`: Relative Eurozone/UK economic barometer.
  * `EURJPY=X`, `GBPJPY=X`, `AUDJPY=X`, `CADJPY=X`: Often viewed as risk appetite indicators. A rise (weaker Yen) generally correlates with positive equity market performance/risk-on sentiment.
  * `EURCHF=X`: Eurozone risk vs Swiss safe haven dynamic. Fall (stronger CHF) can signal stress in the Eurozone.
* **Emerging Markets / Special (`USDCNH=X`, `USDMXN=X`, `USDBRL=X`, `USDZAR=X`)**: USD against key emerging market or specific currencies.
  * `USDCNH=X`: USD vs Offshore Chinese Yuan. Key indicator for China's economy, global trade, and risk sentiment. Rise = weaker Yuan.
  * `USDMXN=X` (Mexican Peso), `USDBRL=X` (Brazilian Real), `USDZAR=X` (South African Rand): *Interpretation*: Rise (weaker EM currency) often indicates risk aversion or specific issues in those economies. Fall (stronger EM currency) can signal risk appetite or positive local developments.
* **ETF Proxies (Commented Out)**: These ETFs (like `FXE`, `FXY`) aim to track the price movements of specific currencies against the USD, offering an alternative way to gain exposure or view trends. `FXY` would be inverse to `USDJPY=X`.

## Group: Crypto

This group tracks major cryptocurrencies and related publicly traded companies/ETFs, reflecting sentiment in the digital asset space, risk appetite, and technological adoption trends.

* **Major Cryptocurrencies (`ADA-USD`, `BTC-USD`, `BNB-USD`, `DOT-USD`, `ETH-USD`, `LTC-USD`, `SOL-USD`, `XMR-USD`)**: Prices of various cryptocurrencies against the US Dollar.
  * `BTC-USD` (Bitcoin): Largest crypto, seen variably as a digital store of value or a risk asset.
  * `ETH-USD` (Ethereum): Leading platform for smart contracts, DeFi, NFTs.
  * Others (`ADA`, `BNB`, `DOT`, `LTC`, `SOL`, `XMR`): Represent different blockchain technologies, ecosystems, or features (e.g., interoperability for DOT, privacy for XMR).
  * *Interpretation*: Highly volatile. Rise often indicates strong risk appetite, positive sentiment within crypto, or specific project developments. Fall indicates risk aversion or negative news.
* **Crypto-related Equities (`COIN`, `MARA`, `MSTR`, `RIOT`)**: Stocks of companies heavily involved in the crypto ecosystem.
  * `COIN` (Coinbase): Major US crypto exchange. *Interpretation*: Performance often linked to crypto trading volumes and overall market sentiment/adoption.
  * `MARA` (Marathon Digital), `RIOT` (Riot Platforms): Bitcoin mining companies. *Interpretation*: Performance is highly correlated with Bitcoin's price and mining profitability.
  * `MSTR` (MicroStrategy): Software company holding large amounts of Bitcoin on its balance sheet. *Interpretation*: Acts as a leveraged play on the price of Bitcoin.
* **Crypto ETFs (`IBIT`)**:
  * `IBIT` (iShares Bitcoin Trust): A spot Bitcoin ETF, holding actual Bitcoin. *Interpretation*: Provides traditional investors exposure to Bitcoin's price movements. Performance tracks Bitcoin price, minus fees. Inflows/outflows can indicate institutional interest.

## Group: Actions (Stocks)

This is a broad list of globally significant, large-cap companies across various sectors and geographies. It serves as a reference for major corporate bellwethers. Tickers are listed with their primary exchange suffix where necessary (.PA for Paris, .DE for Germany/XETRA, .AS for Amsterdam, .SW for Zurich, .NS for India NSE, .TO for Toronto, .KS for Korea, .HK for Hong Kong). US listings often have no suffix.

* *Interpretation*: For individual stocks, monitor their performance relative to their sector, country index, and the overall market. Price changes reflect company-specific news (earnings, products), sector trends (e.g., oil prices for `CVX`), and broader economic factors. The description indicates the company's primary business area. Examples include:
  * `AAPL` (Apple): Consumer tech giant.
  * `MSFT` (Microsoft): Software, cloud, AI.
  * `JPM` (JPMorgan Chase): Major US bank, financial health indicator.
  * `MC.PA` (LVMH): Luxury goods leader, reflects high-end consumer spending.
  * `005930.KS` (Samsung Electronics): Global tech/electronics bellwether.
  * `RELIANCE.NS` (Reliance Industries): Indian conglomerate, proxy for Indian economy.
  * `TSM` (TSMC): World's largest chip foundry, critical to tech supply chain.
  * `BRK-B` (Berkshire Hathaway): Conglomerate, broad economic proxy.
  * `FDX`/`UPS`: Logistics giants, indicators of global trade volume.

## Group: US

This watchlist is a subset focusing specifically on major companies listed on US exchanges, providing a concentrated view of the US corporate landscape.

* *Interpretation*: Same as for individual stocks in the "Actions" group, but focused solely on US-listed entities (including some ADRs of foreign companies like `BIDU` or `TM`). Useful for tracking performance within the dominant US market.

## Group: Asie (Asia)

This group concentrates on key stock indices, ETFs, and major companies from Asia, offering insight into the economic performance and market sentiment of this critical region.

* **Indices (`^BSESN`, `^HSI`, `^KS11`, `^N225`, `^TWII`, `^000001.SS`, `^AXJO`)**: Track major markets (India, Hong Kong, South Korea, Japan, Taiwan, China Mainland, Australia). *Interpretation*: Rise/Fall indicates sentiment in the respective market.
* **ETFs (`AAXJ`, `EWJ`, `INDA`, `MCHI`)**: Provide broader exposure to Asia ex-Japan, Japan, India, and China equities. *Interpretation*: Useful for tracking regional trends beyond single-country indices.
* **Stocks (`BABA`, `BIDU`, `HMC`, `RELIANCE.NS`, `SE`, `SONY`, `TM`, `TSM`, `005930.KS`, `0700.HK`, `9988.HK`)**: Key companies from China, Japan, India, South Korea, Taiwan, and Singapore. *Interpretation*: Monitor performance for insights into specific Asian economies and sectors (e.g., `TSM` for tech supply chain, `BABA`/`Tencent` for China tech/consumer). `SE` provides exposure to Southeast Asia.

## Group: Europe

This group focuses on major European stock indices, ETFs, and leading companies across various countries and sectors within Europe.

* **Indices (`^FCHI`, `^FTSE`, `^GDAXI`, `^IBEX`, `^STOXX50E`)**: Track major markets (France, UK, Germany, Spain, Eurozone Blue Chips). *Interpretation*: Rise/Fall indicates sentiment in the respective market/region.
* **ETFs (`EWG`, `EWQ`)**: Track German and French equity markets specifically.
* **Stocks (various, e.g., `NVO`, `ACA.PA`, `ASML.AS`, `SAP.DE`, `NESN.SW`, `SHEL`)**: A wide selection of major European corporations categorized by country. *Interpretation*: Monitor performance for insights into specific European economies (e.g., German industrials like `SIE.DE`, French luxury like `MC.PA`, Swiss pharma like `NOVN.SW`, UK energy like `SHEL`). Includes key players in Pharma, Finance, Luxury, Industrials, Energy, etc.

## Group: Canada

This watchlist focuses specifically on the Canadian market, including a benchmark index ETF and major companies, particularly strong in Banking, Energy, and Telecom. Suffix `.TO` denotes Toronto Stock Exchange.

* **Index ETF (`XIC.TO`)**: Tracks the broad S&P/TSX Capped Composite Index. *Interpretation*: Represents overall Canadian market performance.
* **Banks (`BMO.TO`, `BNS.TO`, `CM.TO`, `RY.TO`, `TD.TO`)**: Major Canadian chartered banks, forming a large part of the Canadian index. *Interpretation*: Reflect Canadian economic health, interest rate environment, and financial stability.
* **Energy & Mining (`CNQ.TO`, `ENB.TO`, `SU.TO`, `TECK-B.TO`)**: Key players in Canada's resource-heavy economy. *Interpretation*: Performance often linked to commodity prices (oil, gas, metals) and global demand. `ENB.TO` represents energy infrastructure.
* **Industrials / Transport (`CNR.TO`, `CP.TO`)**: Major Canadian railways, crucial for North American trade. *Interpretation*: Reflect trade volumes and economic activity.
* **Technology / E-commerce (`OTEX.TO`, `SHOP.TO`)**: Notable Canadian tech companies. `SHOP.TO` is a global e-commerce platform leader.
* **Telecom (`BCE.TO`, `RCI-B.TO`, `T.TO`)**: Major Canadian telecommunications providers. *Interpretation*: Often seen as stable, dividend-paying stocks reflecting domestic market conditions.
* **Utilities (`EMA.TO`, `FTS.TO`)**: Major utility companies. *Interpretation*: Often considered defensive stocks, sensitive to interest rates.

## Group: France

This watchlist provides a deeper dive into the French stock market, focusing on companies within the CAC 40 index and other major French corporations. Suffix `.PA` denotes Euronext Paris.

* *Interpretation*: All tickers represent major French companies across various sectors (Banking, Insurance, Luxury, Aerospace, Energy, Utilities, Tech, Retail, Construction, etc.). Monitoring this group gives a focused view on the health and sentiment of the French economy and its leading industries. Examples: `MC.PA` (LVMH - Luxury), `TTE` (TotalEnergies - Energy), `BNP.PA` (BNP Paribas - Bank), `AIR.PA` (Airbus - Aerospace), `SNY` (Sanofi - Pharma).

## Group: Industrie & énergie (Industrials & Energy)

A thematic watchlist concentrating on global companies within the Industrial and Energy sectors.

* *Interpretation*: Tracks companies involved in manufacturing, machinery, aerospace, defense, railways, energy production (oil, gas, renewables), and mining. Performance reflects global industrial activity, capital spending, commodity prices, geopolitical events, and the energy transition. Includes ETFs like `ICLN` for clean energy exposure and key industrial (`CAT`, `DE`, `SIE.DE`, `HON`) and energy (`CVX`, `XOM`, `SHEL`, `TTE`, `EQNR`) players. `NEE` is a major US utility with significant renewable energy investments.

## Group: Tech

A thematic watchlist concentrating on global companies within the Technology sector, including hardware, software, semiconductors, e-commerce, social media, and cloud computing.

* *Interpretation*: Tracks companies driving innovation and digital transformation. Performance reflects corporate IT spending, consumer electronics demand, semiconductor cycles, advertising trends, and growth stock sentiment. Includes giants (`AAPL`, `MSFT`, `GOOG`, `AMZN`, `META`), semiconductor leaders (`NVDA`, `AMD`, `INTC`, `TSM`, `ASML.AS`, `QCOM`, `AVGO`), software (`CRM`, `ADBE`, `SAP.DE`, `ORCL`, `NOW`), speculative tech (`ARKK`, `PLTR`), e-commerce (`BABA`, `SHOP.TO`), and cybersecurity (`PANW`). `SEA` provides SE Asia tech exposure.

## Group: Finance

A thematic watchlist concentrating on global companies within the Financial sector, including banks, insurance companies, asset managers, payment networks, and exchanges.

* *Interpretation*: Tracks companies central to the flow of capital and risk management. Performance reflects economic health, interest rate movements, credit conditions, capital markets activity, and consumer spending (via payment networks like `V`, `MA`, `AXP`). Includes major banks (US, Canada, Europe), asset managers (`BLK`), insurers (`ALV.DE`, `CS.PA`), exchanges (`CME`), and brokers (`SCHW`). `BRK-B` is included due to its large insurance operations and investments.

## Group: Santé/Pharma (Healthcare/Pharma)

A thematic watchlist concentrating on global companies within the Healthcare sector, including pharmaceuticals, biotechnology, medical devices, and health insurers.

* *Interpretation*: Tracks companies involved in developing and providing healthcare products and services. Performance often influenced by drug pipelines, clinical trial results, regulatory approvals, government policies, and demographics. Often considered a defensive sector but includes high-growth biotech. Includes major pharma (`JNJ`, `PFE`, `MRK`, `LLY`, `NVO`, `AZN`, `ROG.SW`), biotech (`IBB` ETF), medical devices (`ABT`, `MDT`), and a major US insurer (`UNH`). `TAK` adds Japanese exposure.

## Group: Conso & Luxe (Consumer & Luxury)

A thematic watchlist concentrating on global companies related to consumer spending, including retail, consumer goods, automotive, travel, entertainment, and luxury goods.

* *Interpretation*: Tracks companies sensitive to consumer confidence and discretionary spending (`NKE`, `SBUX`, `MCD`, `DIS`, `BKNG`), staple goods (`KO`, `PEP`, `PG`, `UL`, `NESN.SW`), retail (`WMT`, `COST`, `TGT`, `HD`), auto manufacturers (`F`, `GM`, `STLA`), and luxury (`MC.PA`, `KER.PA`, `RMS.PA`, `CFR.SW`). Performance reflects consumer health, retail trends, travel activity, and brand strength.

## Group: Misc (Miscellaneous)

Holds tickers of specific interest that don't fit neatly into other categories.

* `GME` (GameStop): Watched primarily as an indicator of retail investor sentiment and speculative activity, often referred to as a "meme stock." Its price movements can be disconnected from traditional fundamentals.

## Color Scheme

The `colors` section defines a visual theme for the ticker display, using colors inspired by the "Nord" theme for better readability.
