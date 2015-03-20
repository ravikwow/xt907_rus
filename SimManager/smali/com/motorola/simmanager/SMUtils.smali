.class Lcom/motorola/simmanager/SMUtils;
.super Ljava/lang/Object;
.source "SMUtils.java"


# static fields
.field public static final BLUR_IDENTITY_URI:Landroid/net/Uri;

.field static FTR_35420_USIM_IMPORT_EXPORT:Z

.field private static sInitLoadContactPhotoMethodFailed:Z

.field private static sLoadContactPhotoMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "content://all_contacts/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/simmanager/SMUtils;->BLUR_IDENTITY_URI:Landroid/net/Uri;

    .line 43
    sput-boolean v1, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/simmanager/SMUtils;->sLoadContactPhotoMethod:Ljava/lang/reflect/Method;

    .line 282
    sput-boolean v1, Lcom/motorola/simmanager/SMUtils;->sInitLoadContactPhotoMethodFailed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareNames(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, "success":Z
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 201
    const-string v4, "\\s+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "firstParts":[Ljava/lang/String;
    const-string v4, "\\s+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "secondParts":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 204
    .local v1, "i":I
    array-length v4, v0

    array-length v5, v2

    if-ne v4, v5, :cond_1

    .line 205
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 206
    aget-object v4, v0, v1

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    :cond_0
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 211
    const/4 v3, 0x1

    .line 215
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareNames("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 216
    return v3

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 232
    invoke-static {p0}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p1}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 240
    :cond_0
    :goto_0
    const-string v0, "+1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 237
    :cond_2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 242
    :cond_3
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method static extractDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v4, 0x0

    .line 181
    :goto_0
    return-object v4

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static getIdColumnIndex(Landroid/database/Cursor;I)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "mode"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getNameColumnIndex(Landroid/database/Cursor;I)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "mode"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static getPhoneColumnIndex(Landroid/database/Cursor;I)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "mode"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "SimManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "SimManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method static setFeature35420On(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    .line 47
    return-void
.end method
