.class public Lcom/android/deskclock/worldclock/CityNameComparator;
.super Ljava/lang/Object;
.source "CityNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/deskclock/worldclock/CityObj;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CityNameComparator;->mCollator:Ljava/text/Collator;

    .line 27
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I
    .locals 3
    .param p1, "c1"    # Lcom/android/deskclock/worldclock/CityObj;
    .param p2, "c2"    # Lcom/android/deskclock/worldclock/CityObj;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityNameComparator;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/android/deskclock/worldclock/CityObj;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/deskclock/worldclock/CityObj;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/worldclock/CityNameComparator;->compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v0

    return v0
.end method
