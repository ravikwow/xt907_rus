.class public Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
.super Ljava/lang/Object;
.source "ProviderCredentials.java"


# instance fields
.field private mAccountPrettyName:Ljava/lang/String;

.field private mCaptchaText:Ljava/lang/String;

.field private mCaptchaToken:Ljava/lang/String;

.field private mLogin:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordKey:Ljava/lang/String;

.field private mUserPrettyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "captchaToken"    # Ljava/lang/String;
    .param p5, "captchaText"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p4, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaToken:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "passwordKey"    # Ljava/lang/String;
    .param p5, "userPrettyName"    # Ljava/lang/String;
    .param p6, "accountPrettyName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPassword:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mLogin:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPasswordKey:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mUserPrettyName:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mAccountPrettyName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mAccountPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCapthcaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaText:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPasswordKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mUserPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mPasswordKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->mCaptchaText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
