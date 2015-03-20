.class Lcom/motorola/blur/setup/HomeActivity$UILocale;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UILocale"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field final locale:Ljava/util/Locale;

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/Locale;ZLandroid/content/res/Resources;)V
    .locals 0
    .param p1, "inLocale"    # Ljava/util/Locale;
    .param p2, "shouldUseDisplay"    # Z
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    .line 193
    iput-object p3, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->mResources:Landroid/content/res/Resources;

    .line 194
    invoke-virtual {p0, p2}, Lcom/motorola/blur/setup/HomeActivity$UILocale;->setShouldUseDisplay(Z)V

    .line 195
    return-void
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "specialLocaleCodes":[Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "specialLocaleNames":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 208
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    aget-object v4, v3, v1

    .line 212
    :goto_1
    return-object v4

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public setShouldUseDisplay(Z)V
    .locals 2
    .param p1, "shouldUseDisplay"    # Z

    .prologue
    .line 198
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/HomeActivity$UILocale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/motorola/blur/util/StringUtils;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->label:Ljava/lang/String;

    .line 201
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$UILocale;->label:Ljava/lang/String;

    return-object v0
.end method
