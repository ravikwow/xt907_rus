.class public Lcom/motorola/contacts/simcontact/service/CardOperationService;
.super Landroid/app/IntentService;
.source "CardOperationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/simcontact/service/CardOperationService$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private cardAccount:Landroid/accounts/Account;

.field mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "SIM card"

    const-string v2, "com.card.contacts"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    .line 82
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    .line 124
    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$1;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService$1;-><init>(Lcom/motorola/contacts/simcontact/service/CardOperationService;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mToastHandler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->setIntentRedelivery(Z)V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/simcontact/service/CardOperationService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/simcontact/service/CardOperationService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method private addCardAccount()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 396
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v2, "addCardAccount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 399
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 400
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v2, "addCardAccount() done !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->updateContactSettingsUngroupedVisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 403
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 406
    :cond_0
    return-void
.end method

.method private checkSimCardDetected(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->waitSimCardDetected(I)Z

    move-result v0

    return v0
.end method

.method private isSimCardChanged(I)Z
    .locals 8
    .param p1, "slotPhoneType"    # I

    .prologue
    const/4 v4, 0x1

    .line 248
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v6, "enter isSimCardChanged"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez p1, :cond_1

    .line 253
    const/4 v0, 0x0

    .line 258
    .local v0, "iccId":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimCardChanged, iccId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v0, :cond_2

    .line 275
    :cond_0
    :goto_1
    return v4

    .line 255
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->waitSimCardIccId(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "iccId":Ljava/lang/String;
    goto :goto_0

    .line 263
    :cond_2
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE_ICCID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "prefsKey":Ljava/lang/String;
    const-string v5, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "savediccId":Ljava/lang/String;
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", savediccId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method private loadSimContacts(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 184
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin loadSimContacts, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->resetSimType(I)V

    .line 187
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->checkSimCardDetected(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v3, "reset the iccid to empty, so next time when card be inserted, it will reload sim contacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v2, ""

    invoke-direct {p0, p1, v2}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->setICCID(ILjava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->deleteSIMAccountMembers(Landroid/content/ContentResolver;)V

    .line 210
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->querySimType(Landroid/content/ContentResolver;I)V

    .line 195
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->isSimCardChanged(I)Z

    move-result v0

    .line 196
    .local v0, "isSlotChanged":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "loadSuccess":Z
    if-eqz v0, :cond_1

    .line 199
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadAllSimContacts, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->reloadAllSimContacts(I)Z

    move-result v1

    .line 207
    :goto_1
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->setICCID(I)V

    .line 209
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end loadSimContacts, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", loadSuccess ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncDeltaSimContacts, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->syncDeltaFromCardToContact(I)Z

    move-result v1

    goto :goto_1
.end method

.method private loadSimFinished()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->setSIMLoadStatus(Z)V

    .line 171
    return-void
.end method

.method private preloadAccounts()V
    .locals 5

    .prologue
    .line 175
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 176
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.card.contacts"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 177
    .local v0, "accounts_card":[Landroid/accounts/Account;
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[preloadAccounts] accounts_card = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->addCardAccount()V

    .line 181
    :cond_1
    return-void
.end method

.method private reloadAllSimContacts(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 303
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin reloadAllSimContacts, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v3, "start query SIM contacts...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->showSyncNotification(Landroid/content/Context;II)V

    .line 310
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->deleteSIMAccountMembers(Landroid/content/ContentResolver;)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimCardContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v3, "read sim card failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    :goto_0
    return v1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->bulkInsertSimContacts(Landroid/content/Context;Ljava/util/ArrayList;I)I

    .line 324
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->cancelSyncNotification(Landroid/content/Context;)V

    .line 325
    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end reloadAllSimContacts, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeCardAccount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "removeCardAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->cardAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 411
    return-void
.end method

.method private requestToRegisterTwoObserver(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 635
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/contacts/simcontact/service/CardObserverService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    const-string v1, "register_card_observer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    const-string v1, "register_contact_observer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 639
    return-void
.end method

.method private setICCID(I)V
    .locals 1
    .param p1, "slotPhoneType"    # I

    .prologue
    .line 281
    if-nez p1, :cond_1

    .line 282
    const/4 v0, 0x0

    .line 286
    .local v0, "iccId":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 287
    const-string v0, ""

    .line 288
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->setICCID(ILjava/lang/String;)V

    .line 289
    return-void

    .line 284
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "iccId":Ljava/lang/String;
    goto :goto_0
.end method

.method private setICCID(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotPhoneType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v3, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAVE_ICCID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "prefsKey":Ljava/lang/String;
    sget-object v3, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAVE_ICCID: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method private syncDeltaFromCardToContact(I)Z
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    sget-object v7, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "begin syncDeltaSimContacts, type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v7, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v5}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->showSyncNotification(Landroid/content/Context;II)V

    .line 337
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v4, "simList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimCardContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 339
    sget-object v6, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "read sim card failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 341
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->deleteSIMAccountMembers(Landroid/content/ContentResolver;)V

    .line 392
    :goto_0
    return v5

    .line 346
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "query sim member  =================== start!"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSIMAccountMembers(Landroid/content/ContentResolver;ILjava/util/ArrayList;)Z

    .line 351
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "before diff"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "sim list"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->printPeopleInfo(Ljava/util/ArrayList;)V

    .line 354
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "phone list"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->printPeopleInfo(Ljava/util/ArrayList;)V

    .line 357
    invoke-static {v4, v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->diffPeopleInfoList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 359
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "end diff"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "sim list"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->printPeopleInfo(Ljava/util/ArrayList;)V

    .line 362
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v7, "phone list"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->printPeopleInfo(Ljava/util/ArrayList;)V

    .line 366
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 367
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .line 369
    .local v1, "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    iget v5, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    if-nez v5, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v7, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleId:J

    invoke-static {v5, v7, v8}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->deleteContactInDB(Landroid/content/ContentResolver;J)V

    goto :goto_1

    .line 376
    .end local v1    # "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "bulkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 378
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .line 380
    .restart local v1    # "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    iget v5, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    if-ne v5, v6, :cond_3

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 384
    .end local v1    # "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 385
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->bulkInsertSimContacts(Landroid/content/Context;Ljava/util/ArrayList;I)I

    .line 389
    :cond_5
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->cancelSyncNotification(Landroid/content/Context;)V

    .line 391
    sget-object v5, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end syncDeltaSimContacts, type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 392
    goto/16 :goto_0
.end method

.method protected static syncDeltaFromContactToCard(Landroid/content/Context;)Z
    .locals 25
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    const/16 v19, 0x0

    .line 416
    .local v19, "rawContactIdCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    .line 417
    .local v22, "type":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 418
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v9, "SIM card"

    .line 419
    .local v9, "accountName":Ljava/lang/String;
    const-string v10, "com.card.contacts"

    .line 421
    .local v10, "accountType":Ljava/lang/String;
    const/4 v13, 0x1

    .line 422
    .local v13, "i":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v20, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "deleted"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "sync1"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "sync2"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "sync3"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "sync4"

    aput-object v7, v5, v6

    const-string v6, "account_name =? AND account_type =? AND dirty =1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 427
    if-eqz v19, :cond_11

    .line 428
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 429
    .local v21, "total":I
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rawContactIds(to be synced) contains : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-lez v21, :cond_0

    .line 433
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->showSyncNotification(Landroid/content/Context;II)V

    .line 436
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 437
    const/4 v15, 0x0

    .line 438
    .local v15, "is_newed":Z
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 440
    .local v14, "id":Ljava/lang/Long;
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v18, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct/range {v18 .. v18}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 445
    .local v18, "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 446
    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 447
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 448
    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 449
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    .line 450
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleId:J

    .line 452
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    const/4 v15, 0x1

    .line 458
    :cond_1
    if-eqz v15, :cond_6

    .line 460
    new-instance v17, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct/range {v17 .. v17}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 461
    .local v17, "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v5, v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getPeopleInfoById(Landroid/content/ContentResolver;JLcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 462
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "getPeopleInfoById() failed !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 626
    .end local v14    # "id":Ljava/lang/Long;
    .end local v15    # "is_newed":Z
    .end local v17    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .end local v18    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .end local v21    # "total":I
    :catchall_0
    move-exception v4

    if-eqz v19, :cond_2

    .line 627
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 465
    .restart local v14    # "id":Ljava/lang/Long;
    .restart local v15    # "is_newed":Z
    .restart local v17    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .restart local v18    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .restart local v21    # "total":I
    :cond_3
    :try_start_1
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New added SIM entry, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_number1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_number2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildOldSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 470
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 471
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 472
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 474
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 476
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "swap primary and secondary numbers"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 478
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 481
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v3, v0, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SimCard_AddContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 482
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "insert SIM entry failed !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 489
    :cond_5
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to save MELog for new contact, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v4, "SIMCONTACT_CNT_ADD"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V

    .line 494
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v24, "values":Landroid/content/ContentValues;
    const-string v4, "sync1"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v4, "sync2"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v4, "sync3"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v4, "sync4"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 505
    .local v16, "newBySyncAdaptertUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 508
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->setSIMLoadStatus(Z)V

    .line 509
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkIfSimCardIsFull(Landroid/content/Context;)V

    .line 612
    .end local v16    # "newBySyncAdaptertUri":Landroid/net/Uri;
    .end local v17    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .end local v24    # "values":Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 614
    goto/16 :goto_0

    .line 533
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 534
    .local v12, "deleted":I
    if-nez v12, :cond_b

    .line 536
    new-instance v17, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct/range {v17 .. v17}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 537
    .restart local v17    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v5, v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getPeopleInfoById(Landroid/content/ContentResolver;JLcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 538
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPeopleInfoById() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_7
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated SIM entry, old_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old_number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isPeopleInfoEqual(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 547
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "update info equals, no need to sync info! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_8
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildOldSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 554
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 555
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 556
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 558
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 560
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 561
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 564
    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SimCard_UpdateContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 565
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "update SIM entry failed !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSIMLoadStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 570
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "update SIM entry failed: EMAIL_PARTITION_FULL_FAILURE !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    :cond_a
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to save MELog for edit contact, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v4, "SIMCONTACT_CNT_EDT"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V

    .line 581
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 582
    .restart local v24    # "values":Landroid/content/ContentValues;
    const-string v4, "sync1"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v4, "sync2"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v4, "sync3"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v4, "sync4"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v23

    .line 591
    .local v23, "updateBySyncAdaptertUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 595
    .end local v17    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .end local v23    # "updateBySyncAdaptertUri":Landroid/net/Uri;
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v3, v0, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SimCard_DeleteContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 596
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "delete SIM entry failed !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 602
    :cond_c
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to save MELog for delete contact, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v4, "SIMCONTACT_CNT_DEL"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V

    .line 606
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 608
    .local v11, "deleteBySyncAdaptertUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v11, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 616
    .end local v11    # "deleteBySyncAdaptertUri":Landroid/net/Uri;
    .end local v12    # "deleted":I
    .end local v14    # "id":Ljava/lang/Long;
    .end local v15    # "is_newed":Z
    .end local v18    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_d
    if-lez v21, :cond_e

    .line 618
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->cancelSyncNotification(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :cond_e
    if-eqz v19, :cond_f

    .line 627
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_f
    const/4 v4, 0x1

    .end local v21    # "total":I
    :cond_10
    :goto_2
    return v4

    .line 622
    :cond_11
    :try_start_2
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "rawContactIdCursor = null, no sync will occur !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    const/4 v4, 0x0

    .line 626
    if-eqz v19, :cond_10

    .line 627
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "stateExtra":Ljava/lang/String;
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stateExtra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOADED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    iput-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->ABSENT:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    iput-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    goto :goto_0

    .line 160
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOCKED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    iput-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    goto :goto_0

    .line 163
    :cond_2
    sget-object v2, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    iput-object v2, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    goto :goto_0
.end method

.method private waitSimCardDetected(I)Z
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "begin waitSimCardDetected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    .line 220
    .local v0, "cardState":Lcom/motorola/contacts/simcontact/service/CardOperationService$State;
    const/4 v2, 0x0

    .line 222
    .local v2, "retry":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 223
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIccState:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    .line 224
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardState =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->ABSENT:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOCKED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    if-ne v0, v4, :cond_2

    .line 227
    :cond_0
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent report SIM state is absent/locked, try times is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    :goto_1
    return v3

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->querySimType(Landroid/content/ContentResolver;I)V

    .line 232
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isSimReady(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    const/4 v3, 0x1

    goto :goto_1

    .line 235
    :cond_3
    sget-object v4, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v5, "sim card is not ready, try it again!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 644
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    .line 646
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->registerSIMCardStatusChangeListener()V

    .line 647
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 651
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 652
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying CardOperationService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->loadSimFinished()V

    .line 654
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 658
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleIntent, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->setSIMLoadStatus(Z)V

    .line 96
    const-string v0, "EVENT_LOAD_ALL_SIM_CONTACTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "Load all data on SIM card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->preloadAccounts()V

    .line 101
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->loadSimContacts(I)V

    .line 119
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->requestToRegisterTwoObserver(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->loadSimFinished()V

    .line 122
    return-void

    .line 104
    :cond_1
    const-string v0, "EVENT_SYNC_DELTA_FROM_CARD_TO_CONTACT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "Only sync delta data from card to contact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->syncDeltaFromCardToContact(I)Z

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "EVENT_SYNC_DELTA_FROM_CONTACT_TO_CARD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "Only sync delta data from contact to card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isSimReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->syncDeltaFromContactToCard(Landroid/content/Context;)Z

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "EVENT_CLEAN_SIM_CONTACTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "clean all SIM contacts on SIM card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->deleteSIMAccountMembers(Landroid/content/ContentResolver;)V

    .line 115
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;

    const-string v1, "clean SIM contact Account"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->removeCardAccount()V

    goto :goto_0
.end method

.method public registerSIMCardStatusChangeListener()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/motorola/contacts/simcontact/service/CardOperationService$2;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/simcontact/service/CardOperationService$2;-><init>(Lcom/motorola/contacts/simcontact/service/CardOperationService;)V

    iput-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    .end local v0    # "iFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
