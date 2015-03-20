.class Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/blur/setup/HomeActivity$UILocale;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;->mCollator:Ljava/text/Collator;

    .line 231
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;->mCollator:Ljava/text/Collator;

    .line 232
    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/blur/setup/HomeActivity$UILocale;Lcom/motorola/blur/setup/HomeActivity$UILocale;)I
    .locals 3
    .param p1, "left"    # Lcom/motorola/blur/setup/HomeActivity$UILocale;
    .param p2, "right"    # Lcom/motorola/blur/setup/HomeActivity$UILocale;

    .prologue
    .line 240
    if-eqz p1, :cond_1

    .line 241
    if-eqz p2, :cond_0

    .line 242
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/motorola/blur/setup/HomeActivity$UILocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/motorola/blur/setup/HomeActivity$UILocale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 249
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    if-eqz p2, :cond_2

    .line 247
    const/4 v0, -0x1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Lcom/motorola/blur/setup/HomeActivity$UILocale;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/motorola/blur/setup/HomeActivity$UILocale;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;->compare(Lcom/motorola/blur/setup/HomeActivity$UILocale;Lcom/motorola/blur/setup/HomeActivity$UILocale;)I

    move-result v0

    return v0
.end method
