.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$1;,
        Lcom/android/contacts/ContactsApplication$DelayedInitializer;
    }
.end annotation


# static fields
.field public static SPRINT_HIDDEN_MENU_APP_AVAILABLE:Z

.field public static START_OMADM_DEBUG_APP:Z

.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/android/contacts/ContactsApplication;->SPRINT_HIDDEN_MENU_APP_AVAILABLE:Z

    .line 53
    sput-boolean v0, Lcom/android/contacts/ContactsApplication;->START_OMADM_DEBUG_APP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 159
    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0
    .param p0, "services"    # Lcom/android/contacts/test/InjectedServices;

    .prologue
    .line 61
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    .line 62
    return-void
.end method

.method private isSprintHiddenMenuAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 179
    move-object v0, p0

    .line 180
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 182
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.motorola.hiddenmenuapp"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 183
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v8

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 192
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v6

    .line 185
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v8

    if-ge v2, v8, :cond_3

    .line 186
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v8, v8, v2

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 187
    .local v5, "target":Ljava/lang/String;
    const-string v8, "com.motorola.hiddenmenuapp.HiddenMenuApp"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "target":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 190
    goto :goto_0

    .line 191
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v7

    .line 192
    goto :goto_0
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 70
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 76
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 81
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 88
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 124
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 102
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    .line 109
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 110
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 111
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    .line 116
    :cond_4
    const-string v1, "contactListFilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-nez v1, :cond_5

    .line 118
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->createContactListFilterController(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    goto :goto_0

    .line 124
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 129
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 131
    const-string v0, "ContactsPerf"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "ContactsPerf"

    const-string v1, "ContactsApplication.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    const-string v0, "ContactsStrictMode"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 145
    :cond_1
    new-instance v0, Lcom/android/contacts/ContactsApplication$DelayedInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;-><init>(Lcom/android/contacts/ContactsApplication;Lcom/android/contacts/ContactsApplication$1;)V

    invoke-virtual {v0}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->execute()V

    .line 147
    const-string v0, "ContactsPerf"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "ContactsPerf"

    const-string v1, "ContactsApplication.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsApplication;->isSprintHiddenMenuAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/ContactsApplication;->SPRINT_HIDDEN_MENU_APP_AVAILABLE:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/ContactsApplication;->START_OMADM_DEBUG_APP:Z

    .line 157
    return-void
.end method
