.class public Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;
.super Ljava/lang/Object;
.source "CityGmtOffsetComparator.java"

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
.field private mNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->mNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    return-void
.end method

.method private getCityNameComparator()Lcom/android/deskclock/worldclock/CityNameComparator;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->mNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/deskclock/worldclock/CityNameComparator;

    invoke-direct {v0}, Lcom/android/deskclock/worldclock/CityNameComparator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->mNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->mNameComparator:Lcom/android/deskclock/worldclock/CityNameComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I
    .locals 5
    .param p1, "c1"    # Lcom/android/deskclock/worldclock/CityObj;
    .param p2, "c2"    # Lcom/android/deskclock/worldclock/CityObj;

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    .local v0, "currentTime":J
    iget-object v4, p1, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 29
    .local v2, "offset":I
    iget-object v4, p2, Lcom/android/deskclock/worldclock/CityObj;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 30
    .local v3, "offset2":I
    if-ge v2, v3, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    if-le v2, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->getCityNameComparator()Lcom/android/deskclock/worldclock/CityNameComparator;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/deskclock/worldclock/CityNameComparator;->compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v4

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/worldclock/CityGmtOffsetComparator;->compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v0

    return v0
.end method
