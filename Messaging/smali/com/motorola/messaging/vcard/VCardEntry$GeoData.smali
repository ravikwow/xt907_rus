.class public Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/motorola/messaging/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoData"
.end annotation


# instance fields
.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "propValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    new-array v0, v7, [Ljava/lang/String;

    .line 1553
    .local v0, "dataArray":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1554
    .local v5, "size":I
    if-le v5, v7, :cond_0

    .line 1555
    const/4 v5, 0x2

    .line 1558
    :cond_0
    const/4 v2, 0x0

    .line 1559
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1560
    .local v1, "geoElement":Ljava/lang/String;
    aput-object v1, v0, v2

    .line 1561
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v5, :cond_1

    move v3, v2

    .line 1565
    .end local v1    # "geoElement":Ljava/lang/String;
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 1566
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/4 v6, 0x0

    aput-object v6, v0, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1569
    :cond_2
    const/4 v6, 0x0

    aget-object v6, v0, v6

    iput-object v6, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    .line 1570
    const/4 v6, 0x1

    aget-object v6, v0, v6

    iput-object v6, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    .line 1571
    return-void

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_3
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1587
    instance-of v2, p1, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    if-nez v2, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1590
    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    .line 1591
    .local v0, "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public getEntryLabel()Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1604
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->GEO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1609
    const-string v0, "latitude: %s, longitude: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
