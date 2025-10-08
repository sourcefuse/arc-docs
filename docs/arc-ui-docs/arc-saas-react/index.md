# [ARC SaaS React](https://github.com/sourcefuse/arc-react-sass-ui)

<p align="center">
<img src="https://github.com/sourcefuse/arc-react-sass-ui/blob/main/src/Assets/logo-dark-bg.png?raw=true" width="180"  alt="ARC Logo" />
</p>

**A comprehensive, production-ready React SaaS UI boilerplate and Super Admin Control Plane for building and managing scalable multi-tenant SaaS applications**

Built by [SourceFuse](https://www.sourcefuse.com) as a complete solution for SaaS platforms, this project combines a rich component with powerful administrative capabilities. It serves as both a UI boilerplate for building modern SaaS interfaces and a fully functional control plane for managing tenants, subscriptions, billing, and system operations.

> ⚠️ **Important**: This is a **frontend-only application** that requires specific backend APIs to function. See [API Dependencies](#api-dependencies) section for required services.

Whether you're building a new SaaS platform or need administrative tools for an existing one, this boilerplate provides enterprise-grade components and management features out of the box.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![React](https://img.shields.io/badge/React-18.2.0-blue.svg)](https://reactjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-4.9.3-blue.svg)](https://www.typescriptlang.org/)
[![Material-UI](https://img.shields.io/badge/Material--UI-5.10.15-blue.svg)](https://mui.com/)
[![Vite](https://img.shields.io/badge/Vite-4.1.5-646CFF.svg)](https://vitejs.dev/)

</div>

---

## Table of Contents

- [Features](#features)
- [Preview](#preview)
- [API Dependencies](#api-dependencies)
- [Directory Structure](#directory-structure)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Theming](#theming)
- [Authentication](#authentication)
- [API Integration](#api-integration)
- [Testing](#testing)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

---

## Features

### **Enterprise-Ready Architecture**

- **Modular Components** — 50+ reusable, customizable React components
- **Modern Build System** — Vite-powered for lightning-fast development and builds
- **Production Optimized** — Tree-shaking, code splitting, and performance optimizations

### **Authentication & Security**

- **OAuth2/OpenID Connect Integration** — Secure authentication with industry standards
- **Session Management** — Configurable session timeout and idle detection
- **Permission-Based Access** — Role-based component and route protection
- **Secure Token Handling** — Automatic token refresh and validation

### **Multi-Tenant SaaS Features**

- **Tenant Management** — Complete tenant lifecycle management
- **Subscription Plans** — Flexible plan configuration and billing cycles
- **Feature Toggles** — Dynamic feature enablement per tenant
- **Billing & Invoicing** — Integrated payment and invoice management

### **Super Admin Control Plane**

- **System Configuration** — Admin settings for observability URLs, pagination, and system parameters
- **Plan Management** — Create, update, and manage subscription plans with status tracking
- **Feature Management** — Upload and configure feature sets via CSV, manage feature flags
- **Cluster Management** — Basic cluster configuration for deployment environments
- **Billing Management** — Invoice generation, payment tracking, and billing cycle configuration
- **Tenant Management** — Complete tenant lifecycle with provisioning and status monitoring
- **Lead Management** — Lead tracking with auto-close configuration and conversion workflows
- **Permission Control** — Role-based access control with 40+ granular permissions
- **Dashboard Analytics** — Real-time tenant counts, plan statistics, and visual charts

### **Customization & Theming**

- **Dynamic Theming** — Single-file color configuration for complete rebranding
- **White-Label Ready** — Easy logo, branding, and styling customization
- **Responsive Design** — Mobile-first approach with Material-UI components
- **Dark/Light Mode** — Built-in theme switching capabilities

### **Business Intelligence**

- **Dashboard Analytics** — Real-time metrics and KPI visualization
- **Data Tables** — Advanced filtering, sorting, and pagination
- **Charts & Graphs** — Interactive data visualization with Recharts
- **Audit Logging** — Comprehensive activity tracking and observability

### **Developer Experience**

- **Hot Reload** — Instant development feedback with Vite
- **Comprehensive Testing** — Vitest, Testing Library, and Cypress integration
- **Code Quality** — ESLint, Prettier, and Husky pre-commit hooks
- **Documentation** — Extensive component documentation and examples

---

## Preview

Here's what the dashboard looks like:

<p align="center">
<img src="https://github.com/sourcefuse/arc-react-sass-ui/blob/main/src/Assets/login%20page.png?raw=true" alt="Login Page" />
</p>

---

<p align="center">
<img src="https://github.com/sourcefuse/arc-react-sass-ui/blob/main/src/Assets/dashboard.png?raw=true" alt="Dashboard" />
</p>

---

<p align="center">
  <img src="https://github.com/sourcefuse/arc-react-sass-ui/blob/main/src/Assets/tenants.png?raw=true" alt="Tenants" />
</p>

---

## API Dependencies

> ⚠️ **Critical**: This application **cannot function** without the following backend APIs and services. Ensure all required services are properly configured before deployment.

### **Required Backend Services**

| Service                     | Environment Variable  | Purpose                                             | Required        |
| --------------------------- | --------------------- | --------------------------------------------------- | --------------- |
| **Authentication API**      | `AUTH_API_BASE_URL`   | OAuth2/OpenID Connect authentication server Connect | ✅ **Required** |
| **Main Application API**    | `APP_API_BASE_URL`    | Core business logic, CRUD operations                | ✅ **Required** |
| **Tenant Management API**   | `TENANT_API_BASE_URL` | Tenant lifecycle, provisioning, management          | ✅ **Required** |
| **Audit API**               | `AUDIT_API_BASE_URL`  | Audit logging, activity tracking                    | ✅ **Required** |
| **Observability Dashboard** | `GRAFANA_URL`         | Monitoring, metrics, system health                  | ❌ Optional     |

### **API Endpoints Expected**

The application expects the following API endpoints to be available:

#### **Authentication Endpoints**

- `POST /auth/login` - User authentication
- `POST /auth/refresh` - Token refresh
- `POST /auth/logout` - User logout

#### **Tenant Management Endpoints**

- `GET /tenants` - List tenants
- `POST /tenants` - Create tenant
- `PUT /tenants/:id` - Update tenant
- `DELETE /tenants/:id` - Delete tenant

#### **Plan Management Endpoints**

- `GET /plans` - List subscription plans
- `POST /plans` - Create plan
- `PUT /plans/:id` - Update plan
- `GET /plan-items` - List plan items
- `POST /plan-items` - Create plan item

#### **Feature Management Endpoints**

- `GET /features` - List features
- `POST /features` - Upload features via CSV
- `PUT /features/:id` - Update feature

#### **Billing & Payment Endpoints**

- `GET /invoices` - List invoices
- `POST /invoices` - Generate invoice
- `GET /payments` - List payments
- `POST /payments` - Process payment

#### **System Configuration Endpoints**

- `GET /settings` - Get system settings
- `PUT /settings` - Update system settings
- `GET /clusters` - List clusters
- `POST /clusters` - Create cluster

### **API Response Format**

All APIs should return responses in the following format:

```typescript
// Success Response
{
  "data": any,
  "message": string,
  "status": "success"
}

// Error Response
{
  "error": string,
  "message": string,
  "status": "error"
}
```

### **Authentication Headers**

All API requests require the following headers:

```http
Authorization: Bearer <access_token>
Content-Type: application/json
```

---

## Directory Structure

```
src/
├── Components/           # Reusable UI components
│   ├── AppBar/          # Application header
│   ├── Button/          # Button variants
│   ├── Table/           # Data tables with advanced features
│   ├── Forms/           # Form components and validation
│   ├── SideNav/         # Navigation components
│   └── ...              # 40+ more components
├── Pages/               # Application pages
│   ├── Dashboard/       # Analytics dashboard
│   ├── Tenants/         # Tenant management
│   ├── Configuration/   # Super Admin Control Plane
│   │   ├── Plans/       # Plan management
│   │   ├── PlanItems/   # Plan items configuration
│   │   ├── Features/    # Feature management
│   │   ├── Clusters/    # Cluster management
│   │   ├── Billing/     # Billing configuration
│   │   ├── Settings/    # System settings
│   │   └── Terms/       # Terms & conditions
│   ├── Leads/           # Lead management
│   ├── Payments/        # Billing & invoicing
│   └── ...              # Feature-specific pages
├── Providers/           # React context providers
│   ├── theme/           # Theme configuration
│   └── ...              # Global state providers
├── Hooks/               # Custom React hooks
├── redux/               # State management
├── Constants/           # Application constants
└── Helpers/             # Utility functions
```

---

## Installation

### Prerequisites

- **Node.js** 16.0 or higher
- **npm** 8.0 or higher
- **OAuth2/OpenID Connect** Provider (e.g., Keycloak, Auth0, Azure AD, etc.)
- **Backend APIs** (see [API Dependencies](#api-dependencies) section)

### Environment Setup

1. **Fork the repository:**

- Go to [https://github.com/sourcefuse/arc-react-sass-ui](https://github.com/sourcefuse/arc-react-sass-ui) and click "Fork" to create your own copy.

2. **Clone your fork:**

```bash
git clone https://github.com/<your-username>/arc-react-sass-ui.git
cd arc-react-sass-ui
```

3. **Install dependencies:**

```bash
npm install
```

4. **Configure environment variables:**

```bash
cp .env.example .env
```

5. **Start the development server:**

```bash
npm start
```

Visit `http://localhost:3000` to see the application in action.

---

## Configuration

### Environment Variables

Create a `.env` file in the root directory with the following variables:

```env
# Core Configuration
CLIENT_ID=your-oauth-client-id
APP_API_BASE_URL=https://api.yourdomain.com
AUTH_API_BASE_URL=https://auth.yourdomain.com
TENANT_API_BASE_URL=https://tenant-api.yourdomain.com
AUDIT_API_BASE_URL=https://audit-api.yourdomain.com

# Session Management
ENABLE_SESSION_TIMEOUT=true
EXPIRY_TIME_IN_MINUTE=30
PROMPT_TIME_BEFORE_IDLE_IN_MINUTE=5
STORAGE_SESSION_TIME_KEY=sessionExpiry

# Observability
GRAFANA_URL=https://grafana.yourdomain.com
OBSERVABILITY_DOMAIN=your-app-domain

# UI & Branding
APP_NAME=Your SaaS Application
APP_DESCRIPTION=Your application description

# Optional Configuration
DEFAULT_TIER_ID=default-tier
HASH_SECRET_KEY=your-secret-key
ENABLE_HASH_SECRET=true
```

### Configuration Reference

| Variable                            | Description                       | Type      | Required | Default |
| ----------------------------------- | --------------------------------- | --------- | -------- | ------- |
| `CLIENT_ID`                         | OAuth client identifier           | `string`  | ✅       | -       |
| `AUTH_API_BASE_URL`                 | OAuth authentication server URL   | `string`  | ✅       | -       |
| `APP_API_BASE_URL`                  | Main backend API URL              | `string`  | ✅       | -       |
| `TENANT_API_BASE_URL`               | Tenant management API URL         | `string`  | ✅       | -       |
| `AUDIT_API_BASE_URL`                | Audit logging API URL             | `string`  | ✅       | -       |
| `ENABLE_SESSION_TIMEOUT`            | Enable session timeout management | `boolean` | ❌       | `false` |
| `EXPIRY_TIME_IN_MINUTE`             | Session expiry time in minutes    | `number`  | ❌       | `15`    |
| `PROMPT_TIME_BEFORE_IDLE_IN_MINUTE` | Idle warning time in minutes      | `number`  | ❌       | `1`     |
| `APP_NAME`                          | Application name for branding     | `string`  | ✅       | -       |
| `APP_DESCRIPTION`                   | Application description           | `string`  | ✅       | -       |

---

## Usage

### Super Admin Control Plane

This application serves as a **Super Admin Control Plane** for managing multi-tenant SaaS operations:

#### **Tenant Management**

- **Tenant Provisioning** - Create and provision new tenant instances with automated setup
- **Status Monitoring** - Track tenant status (active, provisioning, suspended, inactive)
- **Configuration** - Manage tenant-specific settings, tiers, and feature assignments
- **Bulk Operations** - View and manage multiple tenants from a centralized interface

#### **Subscription & Plan Management**

- **Plan Configuration** - Create and manage subscription plans with different tiers
- **Plan Items** - Configure individual plan components and features
- **Billing Cycles** - Set up and manage billing periods and payment terms
- **Status Tracking** - Monitor plan status and subscription states

#### **Feature Management**

- **Feature Upload** - Bulk upload features via CSV files
- **Feature Assignment** - Configure which features are available per plan or tenant
- **Feature Flags** - Enable/disable features dynamically

#### **System Administration**

- **Admin Settings** - Configure system-wide parameters:
  - Observability dashboard URLs
  - Default pagination settings (rows per page)
  - Tenant tier configurations
  - Product tags for plan categorization
  - Lead auto-close timeouts
- **Permission Control** - 40+ granular permissions for role-based access control
- **Cluster Configuration** - Basic deployment environment management

#### **Lead Management**

- **Lead Tracking** - Manage prospects and potential customers
- **Conversion Workflow** - Convert leads to active tenants
- **Auto-close Configuration** - Set automatic lead closure after inactivity periods

#### **Billing & Payments**

- **Invoice Management** - Generate, track, and manage invoices
- **Payment Processing** - Handle payment transactions and status tracking
- **Billing Analytics** - Monitor payment status and billing metrics

#### **Dashboard & Analytics**

- **Real-time Metrics** - View tenant counts, plan statistics, and system health
- **Visual Charts** - Pie charts for support tickets and popular plans
- **Recent Activity** - Quick access to recent tenant activities and changes

### Basic Application Setup

```tsx
import React from "react";
import { BrowserRouter } from "react-router-dom";
import { Provider } from "react-redux";
import { ThemeProvider } from "@mui/material/styles";
import App from "./App";
import { store } from "./redux/store";
import { theme } from "./Providers/theme";

function AppWrapper() {
  return (
    <Provider store={store}>
      <ThemeProvider theme={theme}>
        <BrowserRouter>
          <App />
        </BrowserRouter>
      </ThemeProvider>
    </Provider>
  );
}

export default AppWrapper;
```

### Using Components

```tsx
import { Button, Table, PageHeader } from "Components";
import { PermissionsEnum } from "Constants/enums";
import { PermissionWrapper } from "Components/PermissionWrapper";

function MyPage() {
  return (
    <>
      <PageHeader pageName="My Page" />
      <PermissionWrapper requiredPermissions={[PermissionsEnum.ViewTenant]}>
        <Button variant="contained" color="primary">
          Add Tenant
        </Button>
      </PermissionWrapper>
      <Table
        columns={columns}
        data={data}
        enableFiltering
        enableSorting
        enablePagination
      />
    </>
  );
}
```

---

## Theming

### Color Configuration

All theming is centralized in `src/Providers/theme/colors.ts`:

```typescript
export const colors = {
  // Primary brand colors
  primary: "#ff0000",
  primary200: "#f15e5eff",
  primary100: "#f9b9b9ff",
  primary50: "#fce2e2ff",

  // Secondary colors
  secondary: "#5c0000",

  // Status colors
  success: "#00C851",
  warning: "#FAC353",
  destructive: "#ED4337",

  // Surface colors
  surfaceLight: "#FFFFFF",
  surfaceDark: "#f4f2f2ff",

  // Background colors
  backgroundLight: "#fcfafaff",
  backgroundDark: "#E2E2E2",

  // ... more color definitions
} as const;
```

### Custom Theme Creation

```typescript
import { createTheme } from "@mui/material/styles";
import { colors } from "./colors";

export const theme = createTheme({
  palette: {
    primary: {
      main: colors.primary,
      light: colors.primary100,
      dark: colors.secondary,
    },
    secondary: {
      main: colors.secondary,
    },
    success: {
      main: colors.success,
    },
    warning: {
      main: colors.warning,
    },
    error: {
      main: colors.destructive,
    },
  },
  // ... additional theme configuration
});
```

### Branding Customization

1. **Logo**: Replace files in `src/Assets/`
2. **Colors**: Update `colors.ts` file
3. **App Name**: Set `APP_NAME` environment variable
4. **Typography**: Customize Material-UI theme typography

---

## Authentication

### Adding a New OAuth Provider

#### Prerequisites

Before proceeding, ensure you have the following:

- Details of the OAuth provider you want to add (such as `name`, `loginPath`, etc.)
- Access to the project files, specifically:
  - `src/Constants/enums/AuthProvider.enum.ts`
  - `src/Constants/AuthProviders.config.ts`

#### Steps to Add a New OAuth Provider

#### 1. Add the New OAuth Provider to the `AuthProvider.enum.ts`

In the `src/Constants/enums/AuthProvider.enum.ts` file, add the new OAuth provider to the `AuthProvider` enum.

Example:

```typescript
export enum AuthProvider {
  KEYCLOAK = "keycloak",
  COGNITO = "cognito",
  // Add the new provider here
  GOOGLE = "google", // New provider example
  GITHUB = "github", // New provider example
}
```

#### 2. Update AuthProviderConfig in `AuthProviders.config.ts`

The AuthProviderConfig object in `src/Constants/AuthProviders.config.ts` stores configuration for each OAuth provider, including the display name and login path.

To add your new provider, add an entry for it in this file:

```typescript
import { AuthProvider } from "./enums/AuthProvider.enum";

export const AuthProviderConfig: Record<
  AuthProvider,
  { name: string; loginPath: string }
> = {
  [AuthProvider.KEYCLOAK]: {
    name: "Sign in with Keycloak",
    loginPath: "/auth/login",
  },
  [AuthProvider.COGNITO]: {
    name: "Sign in with Cognito",
    loginPath: "/auth/cognito/login",
  },
  // Add your new provider configuration here
  [AuthProvider.GOOGLE]: {
    name: "Sign in with Google",
    loginPath: "/auth/google/login", // Update this with your provider's login URL
  },
  [AuthProvider.GITHUB]: {
    name: "Sign in with GitHub",
    loginPath: "/auth/github/login", // Update this with your provider's login URL
  },
};
```

Make sure the loginPath is set to the correct URL for your OAuth provider’s login endpoint.

#### 3. Update the `Login.tsx` UI

The login page will automatically render buttons for the new providers because the AuthProviders.getProviders() function dynamically generates them from the AuthProviderConfig.

Ensure that your `src/Pages/Login/Login.tsx` is correctly rendering all the providers. It should look like this:

### OAuth2/OpenID Connect Integration

The application supports OAuth2/OpenID Connect authentication with various providers:

```typescript
// Authentication configuration
const authConfig = {
  url: process.env.AUTH_API_BASE_URL,
  realm: "your-realm",
  clientId: process.env.CLIENT_ID,
  redirectUri: process.env.REDIRECT_URI,
  postLogoutRedirectUri: process.env.POST_LOGOUT_REDIRECT_URI,
  onLoad: "login-required",
  checkLoginIframe: false,
};
```

### Session Management

```typescript
// Session timeout configuration
const sessionConfig = {
  enabled: process.env.ENABLE_SESSION_TIMEOUT === "true",
  expiryTime: parseInt(process.env.EXPIRY_TIME_IN_MINUTE || "15"),
  promptTime: parseInt(process.env.PROMPT_TIME_BEFORE_IDLE_IN_MINUTE || "1"),
  storageKey: process.env.STORAGE_SESSION_TIME_KEY || "sessionExpiry",
};
```

### Permission-Based Access

```tsx
import { PermissionWrapper } from "Components/PermissionWrapper";
import { PermissionsEnum } from "Constants/enums";

// Protect components with permissions
<PermissionWrapper requiredPermissions={[PermissionsEnum.ViewTenant]}>
  <TenantManagementComponent />
</PermissionWrapper>;
```

---

## API Integration

### Redux Toolkit Query

The application uses RTK Query for API management:

```typescript
// API slice example
export const tenantApiSlice = createApi({
  reducerPath: "tenantApi",
  baseQuery: fetchBaseQuery({
    baseUrl: process.env.TENANT_API_BASE_URL,
    prepareHeaders: (headers, { getState }) => {
      const token = selectAuthToken(getState());
      if (token) {
        headers.set("authorization", `Bearer ${token}`);
      }
      return headers;
    },
  }),
  tagTypes: ["Tenant", "Plan", "Subscription"],
  endpoints: (builder) => ({
    getTenants: builder.query<TenantResponse, TenantParams>({
      query: (params) => ({
        url: "/tenants",
        params,
      }),
      providesTags: ["Tenant"],
    }),
    // ... more endpoints
  }),
});
```

### Custom Hooks

```typescript
// Permission-aware query hook
export const useQueryHookWithPermission = (
  permissions: PermissionsEnum[],
  queryHook: any,
  params: any,
  options: any = {}
) => {
  const hasPermission = usePermission(permissions);

  return queryHook(params, {
    ...options,
    skip: !hasPermission || options.skip,
  });
};
```

---

## Testing

### Test Setup

```bash
# Run all tests
npm test

# Run tests without watch mode
npm run test:no-watch

# Run tests with coverage
npm run test:coverage

# Run E2E tests
npm run cypress
```

### Testing Utilities

```typescript
// Component testing example
import { render, screen } from "@testing-library/react";
import { Provider } from "react-redux";
import { store } from "../redux/store";
import Button from "./Button";

const renderWithProviders = (component: React.ReactElement) => {
  return render(<Provider store={store}>{component}</Provider>);
};

test("renders button with correct text", () => {
  renderWithProviders(<Button>Click me</Button>);
  expect(screen.getByText("Click me")).toBeInTheDocument();
});
```

---

## Deployment

### Build for Production

```bash
# Generate configuration
npm run config

# Build the application
npm run build

# Preview production build
npm run preview
```

### Environment-Specific Configuration

```bash
# Development
npm run config -- --env=development

# Staging
npm run config -- --env=staging

# Production
npm run config -- --env=production
```

---

## Available Scripts

| Script                  | Description                                               |
| ----------------------- | --------------------------------------------------------- |
| `npm start`             | Start development server with hot reload                  |
| `npm run build`         | Build production bundle                                   |
| `npm run config`        | Generate runtime configuration from environment variables |
| `npm test`              | Run tests in watch mode                                   |
| `npm run test:no-watch` | Run tests once                                            |
| `npm run test:coverage` | Run tests with coverage report                            |
| `npm run lint`          | Check code for linting errors                             |
| `npm run lint:fix`      | Fix auto-fixable linting errors                           |
| `npm run format`        | Format code with Prettier                                 |
| `npm run cypress`       | Open Cypress E2E testing interface                        |
| `npm run analyze`       | Analyze bundle size                                       |

---

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](.github/CONTRIBUTING.md) for details.

### Development Workflow

1. **Clone the repository:**

```bash
git clone https://github.com/sourcefuse/arc-react-sass-ui.git
cd arc-react-sass-ui
```

2. **Create a feature branch**:

```bash
git checkout -b feature/amazing-feature
```

3. **Make your changes**

4. **Run tests**:

```bash
npm test
```

5. **Commit your changes**:

```bash
git commit -m 'Add amazing feature'
```

6. **Push to the branch**:

```bash
git push origin feature/amazing-feature
```

7. **Open a Pull Request**

### Code Standards

- **TypeScript**: All new code must be written in TypeScript
- **Testing**: New components must include tests
- **Documentation**: Update documentation for new features
- **Linting**: Code must pass ESLint checks
- **Formatting**: Code must be formatted with Prettier

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Support

- **Issues**: [GitHub Issues](https://github.com/sourcefuse/arc-react-sass-ui/issues)
- **Email**: support@sourcefuse.com

---

## Acknowledgments

- **Material-UI** for the excellent component library
- **React Boilerplate** for architectural inspiration
- **Vite** for the blazing-fast build tool
- **Redux Toolkit** for state management
- **OAuth2/OpenID** Connect community for authentication standards

---

<div align="center">
  <p>Built by <a href="https://www.sourcefuse.com">SourceFuse</a></p>
  <p>
    <a href="https://github.com/sourcefuse/arc-react-sass-ui">⭐ Star us on GitHub</a> •
    <a href="https://github.com/sourcefuse/arc-react-sass-ui/issues"> Report Bug</a> •
    <a href="https://github.com/sourcefuse/arc-react-sass-ui/issues"> Request Feature</a>
  </p>
</div>
