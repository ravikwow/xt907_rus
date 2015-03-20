.class public Lcom/motorola/messaging/contact/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/motorola/messaging/contact/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mGroupAvatar:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    return-void
.end method

.method public static getByIdsInCache(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactList;
    .locals 7
    .param p0, "spaceSepIds"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    new-instance v3, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v3}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    .line 102
    .local v3, "list":Lcom/motorola/messaging/contact/ContactList;
    invoke-static {p0}, Lcom/motorola/messaging/contact/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;

    .line 103
    .local v1, "entry":Lcom/motorola/messaging/contact/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    iget-object v4, v1, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, v6, v6}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 105
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    iget-wide v4, v1, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/motorola/messaging/contact/Contact;->setRecipientId(J)V

    .line 106
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v1    # "entry":Lcom/motorola/messaging/contact/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/Iterable;ZZ)Lcom/motorola/messaging/contact/ContactList;
    .locals 5
    .param p1, "canBlock"    # Z
    .param p2, "replaceNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/motorola/messaging/contact/ContactList;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "numbers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v2, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v2}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    .line 35
    .local v2, "list":Lcom/motorola/messaging/contact/ContactList;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    invoke-static {v3, p1}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 38
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {v0, v3}, Lcom/motorola/messaging/contact/Contact;->setAddress(Ljava/lang/String;)V

    .line 41
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/ContactList;
    .locals 7
    .param p0, "semiSepNumbers"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z
    .param p2, "replaceNumber"    # Z

    .prologue
    .line 50
    new-instance v4, Lcom/motorola/messaging/contact/ContactList;

    invoke-direct {v4}, Lcom/motorola/messaging/contact/ContactList;-><init>()V

    .line 51
    .local v4, "list":Lcom/motorola/messaging/contact/ContactList;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 52
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 53
    invoke-static {v5, p1}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 54
    .local v1, "contact":Lcom/motorola/messaging/contact/Contact;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {v1, v5}, Lcom/motorola/messaging/contact/Contact;->setAddress(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v1    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "number":Ljava/lang/String;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V
    .locals 3
    .param p1, "l"    # Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 114
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/contact/Contact;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    goto :goto_0

    .line 116
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_0
    return-void
.end method

.method public containsEmailOrAlias()Z
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 140
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    :cond_1
    const/4 v2, 0x1

    .line 144
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v5

    .line 183
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/motorola/messaging/contact/ContactList;

    move-object v4, v0

    .line 186
    .local v4, "other":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact;

    .line 192
    .local v1, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 196
    .end local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/motorola/messaging/contact/ContactList;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/contact/Contact;

    .line 164
    .local v2, "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_1
    return-object v1
.end method

.method public getAddressesAsArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/motorola/messaging/contact/ContactList;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactList;->mGroupAvatar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/contact/ContactList;->mGroupAvatar:Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactList;->mGroupAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFormattedListName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 127
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 129
    .local v0, "c":Lcom/motorola/messaging/contact/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 131
    .end local v0    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_0
    const-string v5, ", "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getShortCodes()Ljava/lang/String;
    .locals 6

    .prologue
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v2, "list":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 263
    .local v3, "sep":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 264
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isShortCode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, ", "

    goto :goto_0

    .line 269
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "mWorkingRecipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/contact/ContactList;->matches([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches([Ljava/lang/String;)Z
    .locals 9
    .param p1, "recipients"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, p1

    if-eq v7, v8, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v5

    .line 242
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 243
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/motorola/messaging/contact/Contact;->getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v2

    .line 244
    .local v2, "c":Lcom/motorola/messaging/contact/Contact;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_2
    move v5, v6

    .line 249
    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/motorola/messaging/contact/ContactList;->getAddressesAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
