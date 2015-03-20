.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PostalSplitter$Postal;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    .line 66
    return-void
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 239
    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v4

    .line 242
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 243
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 247
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 14
    .param p1, "postal"    # Lcom/android/providers/contacts/PostalSplitter$Postal;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 173
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move v9, v11

    .line 174
    .local v9, "hasStreet":Z
    :goto_0
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    move v5, v11

    .line 175
    .local v5, "hasPobox":Z
    :goto_1
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    move v4, v11

    .line 176
    .local v4, "hasNeighborhood":Z
    :goto_2
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    move v1, v11

    .line 177
    .local v1, "hasCity":Z
    :goto_3
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move v7, v11

    .line 178
    .local v7, "hasRegion":Z
    :goto_4
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move v6, v11

    .line 179
    .local v6, "hasPostcode":Z
    :goto_5
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    move v2, v11

    .line 185
    .local v2, "hasCountry":Z
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez v9, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_19

    :cond_0
    move v3, v11

    .line 188
    .local v3, "hasFirstBlock":Z
    :goto_7
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    if-eqz v6, :cond_1a

    :cond_1
    move v8, v11

    .line 189
    .local v8, "hasSecondBlock":Z
    :goto_8
    move v10, v2

    .line 191
    .local v10, "hasThirdBlock":Z
    if-eqz v3, :cond_7

    .line 192
    if-eqz v9, :cond_2

    .line 193
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    if-eqz v5, :cond_4

    .line 196
    if-eqz v9, :cond_3

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_3
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_4
    if-eqz v4, :cond_7

    .line 200
    if-nez v9, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_6
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_7
    if-eqz v8, :cond_e

    .line 206
    if-eqz v3, :cond_8

    .line 207
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_8
    if-eqz v1, :cond_9

    .line 210
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_9
    if-eqz v7, :cond_b

    .line 213
    if-eqz v1, :cond_a

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_a
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_b
    if-eqz v6, :cond_e

    .line 217
    if-nez v1, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_d
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_e
    if-eqz v10, :cond_11

    .line 223
    if-nez v3, :cond_f

    if-eqz v8, :cond_10

    .line 224
    :cond_f
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_10
    if-eqz v2, :cond_11

    .line 227
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1b

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 234
    :goto_9
    return-object v11

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "hasCity":Z
    .end local v2    # "hasCountry":Z
    .end local v3    # "hasFirstBlock":Z
    .end local v4    # "hasNeighborhood":Z
    .end local v5    # "hasPobox":Z
    .end local v6    # "hasPostcode":Z
    .end local v7    # "hasRegion":Z
    .end local v8    # "hasSecondBlock":Z
    .end local v9    # "hasStreet":Z
    .end local v10    # "hasThirdBlock":Z
    :cond_12
    move v9, v12

    .line 173
    goto/16 :goto_0

    .restart local v9    # "hasStreet":Z
    :cond_13
    move v5, v12

    .line 174
    goto/16 :goto_1

    .restart local v5    # "hasPobox":Z
    :cond_14
    move v4, v12

    .line 175
    goto/16 :goto_2

    .restart local v4    # "hasNeighborhood":Z
    :cond_15
    move v1, v12

    .line 176
    goto/16 :goto_3

    .restart local v1    # "hasCity":Z
    :cond_16
    move v7, v12

    .line 177
    goto/16 :goto_4

    .restart local v7    # "hasRegion":Z
    :cond_17
    move v6, v12

    .line 178
    goto/16 :goto_5

    .restart local v6    # "hasPostcode":Z
    :cond_18
    move v2, v12

    .line 179
    goto/16 :goto_6

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "hasCountry":Z
    :cond_19
    move v3, v12

    .line 187
    goto/16 :goto_7

    .restart local v3    # "hasFirstBlock":Z
    :cond_1a
    move v8, v12

    .line 188
    goto/16 :goto_8

    .line 234
    .restart local v8    # "hasSecondBlock":Z
    .restart local v10    # "hasThirdBlock":Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_9
.end method

.method private joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 14
    .param p1, "postal"    # Lcom/android/providers/contacts/PostalSplitter$Postal;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 107
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move v9, v11

    .line 108
    .local v9, "hasStreet":Z
    :goto_0
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    move v5, v11

    .line 109
    .local v5, "hasPobox":Z
    :goto_1
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    move v4, v11

    .line 110
    .local v4, "hasNeighborhood":Z
    :goto_2
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    move v1, v11

    .line 111
    .local v1, "hasCity":Z
    :goto_3
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move v7, v11

    .line 112
    .local v7, "hasRegion":Z
    :goto_4
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move v6, v11

    .line 113
    .local v6, "hasPostcode":Z
    :goto_5
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    move v2, v11

    .line 119
    .local v2, "hasCountry":Z
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    if-eqz v6, :cond_19

    :cond_0
    move v3, v11

    .line 122
    .local v3, "hasFirstBlock":Z
    :goto_7
    if-nez v7, :cond_1

    if-nez v1, :cond_1

    if-eqz v4, :cond_1a

    :cond_1
    move v8, v11

    .line 123
    .local v8, "hasSecondBlock":Z
    :goto_8
    if-nez v9, :cond_2

    if-eqz v5, :cond_1b

    :cond_2
    move v10, v11

    .line 125
    .local v10, "hasThirdBlock":Z
    :goto_9
    if-eqz v3, :cond_5

    .line 126
    if-eqz v2, :cond_3

    .line 127
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_3
    if-eqz v6, :cond_5

    .line 130
    if-eqz v2, :cond_4

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_4
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_5
    if-eqz v8, :cond_c

    .line 136
    if-eqz v3, :cond_6

    .line 137
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_6
    if-eqz v7, :cond_7

    .line 140
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_7
    if-eqz v1, :cond_9

    .line 143
    if-eqz v7, :cond_8

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_8
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_9
    if-eqz v4, :cond_c

    .line 147
    if-nez v7, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_b
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_c
    if-eqz v10, :cond_11

    .line 153
    if-nez v3, :cond_d

    if-eqz v8, :cond_e

    .line 154
    :cond_d
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_e
    if-eqz v9, :cond_f

    .line 157
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_f
    if-eqz v5, :cond_11

    .line 160
    if-eqz v9, :cond_10

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_10
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1c

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 168
    :goto_a
    return-object v11

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "hasCity":Z
    .end local v2    # "hasCountry":Z
    .end local v3    # "hasFirstBlock":Z
    .end local v4    # "hasNeighborhood":Z
    .end local v5    # "hasPobox":Z
    .end local v6    # "hasPostcode":Z
    .end local v7    # "hasRegion":Z
    .end local v8    # "hasSecondBlock":Z
    .end local v9    # "hasStreet":Z
    .end local v10    # "hasThirdBlock":Z
    :cond_12
    move v9, v12

    .line 107
    goto/16 :goto_0

    .restart local v9    # "hasStreet":Z
    :cond_13
    move v5, v12

    .line 108
    goto/16 :goto_1

    .restart local v5    # "hasPobox":Z
    :cond_14
    move v4, v12

    .line 109
    goto/16 :goto_2

    .restart local v4    # "hasNeighborhood":Z
    :cond_15
    move v1, v12

    .line 110
    goto/16 :goto_3

    .restart local v1    # "hasCity":Z
    :cond_16
    move v7, v12

    .line 111
    goto/16 :goto_4

    .restart local v7    # "hasRegion":Z
    :cond_17
    move v6, v12

    .line 112
    goto/16 :goto_5

    .restart local v6    # "hasPostcode":Z
    :cond_18
    move v2, v12

    .line 113
    goto/16 :goto_6

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "hasCountry":Z
    :cond_19
    move v3, v12

    .line 121
    goto/16 :goto_7

    .restart local v3    # "hasFirstBlock":Z
    :cond_1a
    move v8, v12

    .line 122
    goto/16 :goto_8

    .restart local v8    # "hasSecondBlock":Z
    :cond_1b
    move v10, v12

    .line 123
    goto/16 :goto_9

    .line 168
    .restart local v10    # "hasThirdBlock":Z
    :cond_1c
    const/4 v11, 0x0

    goto :goto_a
.end method

.method private joinKoKr(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 14
    .param p1, "postal"    # Lcom/android/providers/contacts/PostalSplitter$Postal;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 254
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    move v9, v11

    .line 255
    .local v9, "hasStreet":Z
    :goto_0
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move v5, v11

    .line 256
    .local v5, "hasPobox":Z
    :goto_1
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    move v4, v11

    .line 257
    .local v4, "hasNeighborhood":Z
    :goto_2
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    move v1, v11

    .line 258
    .local v1, "hasCity":Z
    :goto_3
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    move v7, v11

    .line 259
    .local v7, "hasRegion":Z
    :goto_4
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move v6, v11

    .line 260
    .local v6, "hasPostcode":Z
    :goto_5
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move v2, v11

    .line 266
    .local v2, "hasCountry":Z
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez v6, :cond_0

    if-eqz v2, :cond_18

    :cond_0
    move v3, v11

    .line 269
    .local v3, "hasFirstBlock":Z
    :goto_7
    if-nez v7, :cond_1

    if-nez v1, :cond_1

    if-eqz v9, :cond_19

    :cond_1
    move v8, v11

    .line 270
    .local v8, "hasSecondBlock":Z
    :goto_8
    if-nez v4, :cond_2

    if-eqz v5, :cond_1a

    :cond_2
    move v10, v11

    .line 272
    .local v10, "hasThirdBlock":Z
    :goto_9
    if-eqz v3, :cond_5

    .line 273
    if-eqz v6, :cond_3

    .line 274
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_3
    if-eqz v2, :cond_5

    .line 277
    if-eqz v6, :cond_4

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_4
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_5
    if-eqz v8, :cond_b

    .line 283
    if-eqz v3, :cond_6

    .line 284
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_6
    if-eqz v7, :cond_7

    .line 287
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_7
    if-eqz v1, :cond_9

    .line 290
    if-eqz v7, :cond_8

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_8
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_9
    if-eqz v9, :cond_b

    .line 294
    if-eqz v1, :cond_a

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_a
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_b
    if-eqz v10, :cond_10

    .line 300
    if-nez v3, :cond_c

    if-eqz v8, :cond_d

    .line 301
    :cond_c
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_d
    if-eqz v4, :cond_e

    .line 304
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_e
    if-eqz v5, :cond_10

    .line 307
    if-eqz v4, :cond_f

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_f
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_1b

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 315
    :goto_a
    return-object v11

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "hasCity":Z
    .end local v2    # "hasCountry":Z
    .end local v3    # "hasFirstBlock":Z
    .end local v4    # "hasNeighborhood":Z
    .end local v5    # "hasPobox":Z
    .end local v6    # "hasPostcode":Z
    .end local v7    # "hasRegion":Z
    .end local v8    # "hasSecondBlock":Z
    .end local v9    # "hasStreet":Z
    .end local v10    # "hasThirdBlock":Z
    :cond_11
    move v9, v12

    .line 254
    goto/16 :goto_0

    .restart local v9    # "hasStreet":Z
    :cond_12
    move v5, v12

    .line 255
    goto/16 :goto_1

    .restart local v5    # "hasPobox":Z
    :cond_13
    move v4, v12

    .line 256
    goto/16 :goto_2

    .restart local v4    # "hasNeighborhood":Z
    :cond_14
    move v1, v12

    .line 257
    goto/16 :goto_3

    .restart local v1    # "hasCity":Z
    :cond_15
    move v7, v12

    .line 258
    goto/16 :goto_4

    .restart local v7    # "hasRegion":Z
    :cond_16
    move v6, v12

    .line 259
    goto/16 :goto_5

    .restart local v6    # "hasPostcode":Z
    :cond_17
    move v2, v12

    .line 260
    goto/16 :goto_6

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "hasCountry":Z
    :cond_18
    move v3, v12

    .line 268
    goto/16 :goto_7

    .restart local v3    # "hasFirstBlock":Z
    :cond_19
    move v8, v12

    .line 269
    goto/16 :goto_8

    .restart local v8    # "hasSecondBlock":Z
    :cond_1a
    move v10, v12

    .line 270
    goto/16 :goto_9

    .line 315
    .restart local v10    # "hasThirdBlock":Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_a
.end method


# virtual methods
.method public join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 3
    .param p1, "postal"    # Lcom/android/providers/contacts/PostalSplitter$Postal;

    .prologue
    .line 87
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 92
    .local v0, "values":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinKoKr(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .locals 1
    .param p1, "postal"    # Lcom/android/providers/contacts/PostalSplitter$Postal;
    .param p2, "formattedAddress"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method
