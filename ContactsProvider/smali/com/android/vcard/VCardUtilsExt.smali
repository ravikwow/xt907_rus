.class public Lcom/android/vcard/VCardUtilsExt;
.super Ljava/lang/Object;
.source "VCardUtilsExt.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static final getDefaultExportCharset(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "vcardType"    # I
    .param p1, "defaultCharset"    # Ljava/lang/String;

    .prologue
    .line 282
    move-object v0, p1

    .line 284
    .local v0, "charset":Ljava/lang/String;
    and-int/lit8 v3, p0, 0x3

    .line 286
    .local v3, "version":I
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "exportCharsetByVersion":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 291
    aget-object v0, v2, v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2    # "exportCharsetByVersion":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_vcard_export_charset_by_version Not Found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
