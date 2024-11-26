@echo off
echo Installation du projet AfriBank...

:: Création de la structure des dossiers
mkdir frontend
mkdir backend
mkdir smart-contracts
mkdir docs
mkdir scripts

:: Frontend structure
cd frontend
mkdir src
cd src
mkdir components
mkdir pages
mkdir hooks
mkdir services
mkdir styles
cd ../..

:: Backend structure
cd backend
mkdir src
cd src
mkdir controllers
mkdir models
mkdir routes
mkdir services
mkdir config
mkdir middleware
cd ../..

:: Smart Contracts structure
cd smart-contracts
mkdir contracts
mkdir test
mkdir scripts
cd ..

:: Installation des dépendances Frontend
cd frontend
call npm init -y
call npm install react react-dom next @chakra-ui/react ethers@^5.7.2 @web3-react/core recharts lucide-react @radix-ui/react-alert-dialog @radix-ui/react-dropdown-menu axios
cd ..

:: Installation des dépendances Backend
cd backend
call npm init -y
call npm install express mongoose dotenv jsonwebtoken cors helmet express-rate-limit web3 winston
cd ..

:: Installation des dépendances Smart Contracts
cd smart-contracts
call npm init -y
call npm install --save-dev hardhat @nomiclabs/hardhat-ethers @nomiclabs/hardhat-waffle @openzeppelin/contracts chai ethereum-waffle ethers solidity-coverage
cd ..

:: Création des fichiers .env
echo NEXT_PUBLIC_API_URL=http://localhost:3001 > frontend/.env.local
echo MONGODB_URI=mongodb://localhost:27017/afribank > backend/.env
echo PRIVATE_KEY=your_private_key > smart-contracts/.env

echo Installation terminée avec succès!
pause