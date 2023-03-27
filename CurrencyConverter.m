%The MATLAB code above is a program that converts currency between Euro, 
%US dollar, British pound, Romanian leu, Bulgarian leva, and Chinese yuan 
%based on current exchange rates. The exchange rates are defined as 
%variables at the beginning of the program.

%The program prompts the user to enter the amount to be converted and 
%the currencies to convert from and to. It then uses a series of nested 
%switch cases to perform the conversion based on the user input. 
%If the user inputs an invalid currency, the program displays an error 
%message and terminates.

%Finally, the program displays the converted amount with the original 
%currency and the target currency.

% Exchange rates 
eur_to_usd = 1.17;
eur_to_gbp = 0.85;
eur_to_ron = 4.86;
eur_to_leva = 1.96;
eur_to_yuan = 7.62;

% Get input from the user
amount = input('Enter amount to convert: ');
from_currency = input('Enter currency to convert from (euro, dollar, pound, RON, leva, yuan): ','s');
to_currency = input('Enter currency to convert to (euro, dollar, pound, RON, leva, yuan): ','s');

% Perform the conversion
switch from_currency
    case 'euro'
        switch to_currency
            case 'dollar'
                converted_amount = amount * eur_to_usd;
            case 'pound'
                converted_amount = amount * eur_to_gbp;
            case 'RON'
                converted_amount = amount * eur_to_ron;
            case 'leva'
                converted_amount = amount * eur_to_leva;
            case 'yuan'
                converted_amount = amount * eur_to_yuan;
            otherwise
                disp('Invalid currency to convert to')
                return
        end
    case 'dollar'
        switch to_currency
            case 'euro'
                converted_amount = amount / eur_to_usd;
            case 'pound'
                converted_amount = amount / eur_to_usd * eur_to_gbp;
            case 'RON'
                converted_amount = amount / eur_to_usd * eur_to_ron;
            case 'leva'
                converted_amount = amount / eur_to_usd * eur_to_leva;
            case 'yuan'
                converted_amount = amount / eur_to_usd * eur_to_yuan;
            otherwise
                disp('Invalid currency to convert to')
                return
        end
    case 'pound'
        switch to_currency
            case 'euro'
                converted_amount = amount / eur_to_gbp;
            case 'dollar'
                converted_amount = amount / eur_to_gbp * eur_to_usd;
            case 'RON'
                converted_amount = amount / eur_to_gbp * eur_to_ron;
            case 'leva'
                converted_amount = amount / eur_to_gbp * eur_to_leva;
            case 'yuan'
                converted_amount = amount / eur_to_gbp * eur_to_yuan;
            otherwise
                disp('Invalid currency to convert to')
                return
        end
    case 'RON'
        switch to_currency
            case 'euro'
                converted_amount = amount / eur_to_ron;
            case 'dollar'
                converted_amount = amount / eur_to_ron * eur_to_usd;
            case 'pound'
                converted_amount = amount / eur_to_ron * eur_to_gbp;
            case 'leva'
                converted_amount = amount / eur_to_ron * eur_to_leva;
            case 'yuan'
                converted_amount = amount / eur_to_ron * eur_to_yuan;
            otherwise
                disp('Invalid currency to convert to')
                return
        end
    case 'leva'
        switch to_currency
            case 'euro'
                converted_amount = amount / eur_to_leva;
            case 'dollar'
                converted_amount = amount / eur_to_leva * eur_to_usd;
        case 'pound'
            converted_amount = amount / eur_to_leva * eur_to_gbp;
        case 'RON'
            converted_amount = amount / eur_to_leva * eur_to_ron;
        case 'yuan'
            converted_amount = amount / eur_to_leva * eur_to_yuan;
        otherwise
            disp('Invalid currency to convert to')
            return
        end
    case 'yuan'
        switch to_currency
            case 'euro'
                converted_amount = amount / eur_to_yuan;
            case 'dollar'
                converted_amount = amount / eur_to_yuan * eur_to_usd;
            case 'pound'
                converted_amount = amount / eur_to_yuan * eur_to_gbp;
            case 'RON'
                converted_amount = amount / eur_to_yuan * eur_to_ron;
            case 'leva'
                converted_amount = amount / eur_to_yuan * eur_to_leva;
            otherwise
                disp('Invalid currency to convert to')
                return
        end
    otherwise
        disp('Invalid currency to convert from')
        return
    end

    % Display the result
    disp([num2str(amount) ' ' from_currency ' = ' num2str(converted_amount) ' ' to_currency])