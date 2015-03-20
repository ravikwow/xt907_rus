.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;
    }
.end annotation


# static fields
.field private static final CONTACT_ID:I = 0xc8

.field private static final CONTENT_DIR_DEVICE_BY_NAME:Landroid/net/Uri;

.field private static final CONTENT_DIR_RAW_CONTACT_PHOTO:Landroid/net/Uri;

.field private static final CONTENT_DIR_SOCIAL_NETWORK_BY_ACCOUNT:Landroid/net/Uri;

.field private static final CONTENT_DIR_SOCIAL_NETWORK_BY_NAME:Landroid/net/Uri;

.field private static final CONTENT_DIR_SOCIAL_NETWORK_BY_PROVIDER:Landroid/net/Uri;

.field public static final PHOTO_SIZE_100PX:Landroid/graphics/Rect;

.field public static final PHOTO_SIZE_200PX:Landroid/graphics/Rect;

.field public static final PHOTO_SIZE_240PX:Landroid/graphics/Rect;

.field public static final PHOTO_SIZE_50PX:Landroid/graphics/Rect;

.field public static final PHOTO_SIZE_75PX:Landroid/graphics/Rect;

.field private static final RAW_CONTACT_ID:I = 0x64

.field private static sGreyManCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0x4b

    const/16 v1, 0x32

    const/16 v5, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    .line 1064
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_50PX:Landroid/graphics/Rect;

    .line 1065
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_75PX:Landroid/graphics/Rect;

    .line 1066
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_100PX:Landroid/graphics/Rect;

    .line 1067
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_200PX:Landroid/graphics/Rect;

    .line 1068
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xf0

    const/16 v2, 0xa0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_240PX:Landroid/graphics/Rect;

    .line 1549
    const-string v0, "content://com.motorola.blur.contacts.extensions/photo_algorithm_device_name"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_DEVICE_BY_NAME:Landroid/net/Uri;

    .line 1552
    const-string v0, "content://com.motorola.blur.contacts.extensions/photo_algorithm_social_network_name"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_NAME:Landroid/net/Uri;

    .line 1555
    const-string v0, "content://com.motorola.blur.contacts.extensions/photo_algorithm_social_network_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_PROVIDER:Landroid/net/Uri;

    .line 1559
    const-string v0, "content://com.motorola.blur.contacts.extensions/photo_algorithm_social_network_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_ACCOUNT:Landroid/net/Uri;

    .line 1563
    const-string v0, "content://com.motorola.blur.contacts.extensions/photo_raw_contact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_RAW_CONTACT_PHOTO:Landroid/net/Uri;

    .line 1566
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    .line 1571
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw_contacts/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1573
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1575
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    return-void
.end method

.method private static cropImage(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmpSrc"    # Landroid/graphics/Bitmap;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I

    .prologue
    .line 1502
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p4

    if-lt v0, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p5

    if-lt v0, v2, :cond_2

    :cond_0
    move-object/from16 v10, p1

    .line 1542
    :cond_1
    :goto_0
    return-object v10

    .line 1508
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p4

    if-gt v0, v2, :cond_4

    .line 1509
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p5

    if-gt v0, v2, :cond_5

    .line 1516
    :goto_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_6

    .line 1518
    :cond_3
    const-string v2, "BlurContactsExt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "===== Cropping img failed!!!"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1519
    const/4 v10, 0x0

    goto :goto_0

    .line 1508
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    goto :goto_1

    .line 1509
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    goto :goto_2

    .line 1522
    :cond_6
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v12, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1523
    .local v12, "canvas":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1526
    .local v11, "c":Landroid/graphics/Bitmap$Config;
    :goto_3
    const/4 v10, 0x0

    .line 1528
    .local v10, "bmpDest":Landroid/graphics/Bitmap;
    :try_start_0
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1529
    move/from16 v0, p4

    new-array v3, v0, [I

    .line 1530
    .local v3, "rowPixels":[I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_4
    move/from16 v0, p5

    if-ge v14, v0, :cond_1

    .line 1531
    const/4 v4, 0x0

    add-int v7, p3, v14

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p2

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1533
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v2, v10

    move/from16 v5, p4

    move v7, v14

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1530
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1523
    .end local v3    # "rowPixels":[I
    .end local v10    # "bmpDest":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Bitmap$Config;
    .end local v14    # "y":I
    :cond_7
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 1536
    .restart local v10    # "bmpDest":Landroid/graphics/Bitmap;
    .restart local v11    # "c":Landroid/graphics/Bitmap$Config;
    :catch_0
    move-exception v13

    .line 1537
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BlurContactsExt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal argument exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1538
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    .line 1539
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "BlurContactsExt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public static loadContactPhoto(Landroid/content/Context;JLcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "photoContext"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;
    .param p4, "photoSize"    # Landroid/graphics/Rect;
    .param p5, "placeholderImageResource"    # I
    .param p6, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    .line 1086
    if-nez p4, :cond_2

    .line 1087
    const/16 v16, 0x0

    .line 1088
    .local v16, "icon":Landroid/graphics/Bitmap;
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 1089
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1091
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 1093
    .local v17, "input":Ljava/io/InputStream;
    # getter for: Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1094
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    # setter for: Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->access$002(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 1095
    # getter for: Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1098
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    # getter for: Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->access$000()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1180
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v16    # "icon":Landroid/graphics/Bitmap;
    .end local v17    # "input":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v16

    .line 1106
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getType()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    move-result-object v2

    sget-object v4, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;->DEVICE_CONTEXT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$Type;

    if-ne v2, v4, :cond_c

    .line 1107
    :cond_3
    const/16 v16, 0x0

    .line 1108
    .restart local v16    # "icon":Landroid/graphics/Bitmap;
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_6

    .line 1109
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1110
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1111
    .local v11, "cursorContacts":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1113
    .local v12, "cursorData":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1116
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 1117
    :cond_4
    const/16 v16, 0x0

    .line 1135
    :goto_1
    if-eqz v11, :cond_5

    .line 1136
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1138
    :cond_5
    if-eqz v12, :cond_6

    .line 1139
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1143
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v11    # "cursorContacts":Landroid/database/Cursor;
    .end local v12    # "cursorData":Landroid/database/Cursor;
    :cond_6
    if-nez v16, :cond_1

    .line 1146
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "blur"

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadDeviceContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_0

    .line 1119
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v11    # "cursorContacts":Landroid/database/Cursor;
    .restart local v12    # "cursorData":Landroid/database/Cursor;
    :cond_7
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1120
    .local v13, "dataId":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1124
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1125
    :cond_8
    const/16 v16, 0x0

    goto :goto_1

    .line 1127
    :cond_9
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1128
    .local v18, "rawContactId":J
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_RAW_CONTACT_PHOTO:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    goto :goto_1

    .line 1135
    .end local v13    # "dataId":J
    .end local v18    # "rawContactId":J
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    .line 1136
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1138
    :cond_a
    if-eqz v12, :cond_b

    .line 1139
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 1152
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v11    # "cursorContacts":Landroid/database/Cursor;
    .end local v12    # "cursorData":Landroid/database/Cursor;
    .end local v16    # "icon":Landroid/graphics/Bitmap;
    :cond_c
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$1;->$SwitchMap$com$motorola$blur$provider$contactsExtensions$BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData:[I

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getSNDataType()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1169
    if-lez p5, :cond_e

    .line 1170
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 1171
    .local v15, "greyMan":Landroid/graphics/Bitmap;
    if-nez v15, :cond_d

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p5

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1174
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v16, v15

    .line 1176
    goto/16 :goto_0

    .line 1154
    .end local v15    # "greyMan":Landroid/graphics/Bitmap;
    :pswitch_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getSocialNetworkAccount()J

    move-result-wide v6

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadSocialNetworkContactPhotoAccount(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_0

    .line 1159
    :pswitch_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getSocialNetworkName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadSocialNetworkContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_0

    .line 1164
    :pswitch_2
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;->getSocialNetworkProvider()J

    move-result-wide v6

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadSocialNetworkContactPhotoProvider(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_0

    .line 1180
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1099
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v16    # "icon":Landroid/graphics/Bitmap;
    .restart local v17    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoAlgorithmUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "targetSize"    # Landroid/graphics/Rect;
    .param p4, "placeholderImageResource"    # I
    .param p5, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    .line 1318
    if-nez p3, :cond_0

    .line 1319
    sget-object p3, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_100PX:Landroid/graphics/Rect;

    .line 1322
    :cond_0
    const/16 v21, 0x0

    .line 1323
    .local v21, "rtnBmp":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 1325
    .local v15, "imageData":[B
    const/16 v17, 0x1

    .line 1326
    .local v17, "imageWidth":I
    const/16 v16, 0x1

    .line 1328
    .local v16, "imageHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v32

    .line 1329
    .local v32, "targetWidth":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v31

    .line 1330
    .local v31, "targetHeight":I
    :goto_1
    add-int v2, v32, v31

    div-int/lit8 v30, v2, 0x2

    .line 1331
    .local v30, "targetDim":I
    const/16 v2, 0x32

    move/from16 v0, v30

    if-gt v0, v2, :cond_8

    const/16 v29, 0x1

    .line 1341
    .local v29, "snPhotoType":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1344
    const/4 v8, 0x0

    .line 1347
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v4, v0, [Ljava/lang/String;

    const/16 v33, 0x0

    const-string v34, "data15"

    aput-object v34, v4, v33

    const/16 v33, 0x1

    const-string v34, "_id"

    aput-object v34, v4, v33

    const/16 v33, 0x2

    const-string v34, "data_sync4"

    aput-object v34, v4, v33

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1351
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1352
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 1356
    :cond_1
    if-eqz v15, :cond_2

    .line 1357
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1358
    .local v19, "photoInputStream1":Ljava/io/InputStream;
    if-eqz v19, :cond_2

    .line 1360
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1361
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1362
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1363
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1364
    const/16 v19, 0x0

    .line 1365
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_a

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 1366
    :goto_3
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_b

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 1376
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "photoInputStream1":Ljava/io/InputStream;
    :cond_2
    :goto_4
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v24, v33, v35

    .line 1377
    .local v24, "scaleX":D
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v26, v33, v35

    .line 1378
    .local v26, "scaleY":D
    cmpl-double v2, v24, v26

    if-lez v2, :cond_c

    move-wide/from16 v22, v24

    .line 1380
    .local v22, "scale":D
    :goto_5
    if-eqz v15, :cond_12

    if-eqz p5, :cond_12

    .line 1387
    const-wide v33, 0x3ffa8f5c28f5c28fL

    cmpg-double v2, v22, v33

    if-gtz v2, :cond_d

    const/16 v28, 0x1

    .line 1397
    .local v28, "sharpness":I
    :goto_6
    move-wide/from16 v0, v22

    double-to-float v2, v0

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-interface {v0, v15, v2, v1}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;->decodeImage([BFI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1400
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .local v3, "rtnBmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 1401
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v33, v0

    mul-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v2, v0

    sub-int v2, v2, v31

    :try_start_1
    div-int/lit8 v5, v2, 0x3

    .line 1402
    .local v5, "offsetY":I
    if-ltz v5, :cond_10

    .line 1403
    :goto_7
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v33, v0

    mul-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v2, v0

    sub-int v2, v2, v32

    div-int/lit8 v4, v2, 0x2

    .line 1404
    .local v4, "offsetX":I
    if-ltz v4, :cond_11

    :goto_8
    move-object/from16 v2, p0

    move/from16 v6, v32

    move/from16 v7, v31

    .line 1405
    invoke-static/range {v2 .. v7}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->cropImage(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    :cond_3
    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .local v7, "targetHeight":I
    move/from16 v6, v32

    .line 1470
    .end local v28    # "sharpness":I
    .end local v32    # "targetWidth":I
    .local v6, "targetWidth":I
    :cond_4
    :goto_9
    if-eqz v8, :cond_5

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1476
    .end local v22    # "scale":D
    .end local v24    # "scaleX":D
    .end local v26    # "scaleY":D
    :cond_5
    :goto_a
    if-eqz v3, :cond_19

    .line 1493
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    :goto_b
    return-object v3

    .line 1328
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v29    # "snPhotoType":I
    .end local v30    # "targetDim":I
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    :cond_6
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1329
    .restart local v32    # "targetWidth":I
    :cond_7
    const/16 v31, 0x1

    goto/16 :goto_1

    .line 1331
    .restart local v30    # "targetDim":I
    .restart local v31    # "targetHeight":I
    :cond_8
    const/16 v2, 0x82

    move/from16 v0, v30

    if-lt v0, v2, :cond_9

    const/16 v29, 0x4

    goto/16 :goto_2

    :cond_9
    const/16 v29, 0x3

    goto/16 :goto_2

    .line 1365
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "photoInputStream1":Ljava/io/InputStream;
    .restart local v29    # "snPhotoType":I
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 1366
    :cond_b
    const/16 v16, 0x1

    goto/16 :goto_4

    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "photoInputStream1":Ljava/io/InputStream;
    .restart local v24    # "scaleX":D
    .restart local v26    # "scaleY":D
    :cond_c
    move-wide/from16 v22, v26

    .line 1378
    goto :goto_5

    .line 1387
    .restart local v22    # "scale":D
    :cond_d
    const-wide v33, 0x4002a3d70a3d70a4L

    cmpg-double v2, v22, v33

    if-gtz v2, :cond_e

    const/16 v28, 0x2

    goto :goto_6

    :cond_e
    const-wide/high16 v33, 0x4008000000000000L

    cmpg-double v2, v22, v33

    if-gtz v2, :cond_f

    const/16 v28, 0x3

    goto :goto_6

    :cond_f
    const/16 v28, 0x4

    goto :goto_6

    .line 1402
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v5    # "offsetY":I
    .restart local v28    # "sharpness":I
    :cond_10
    const/4 v5, 0x0

    goto :goto_7

    .line 1404
    .restart local v4    # "offsetX":I
    :cond_11
    const/4 v4, 0x0

    goto :goto_8

    .line 1408
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v28    # "sharpness":I
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    :cond_12
    if-eqz v15, :cond_1e

    .line 1415
    :try_start_2
    div-int v10, v17, v32

    .line 1416
    .local v10, "downScaleX":I
    div-int v11, v16, v31

    .line 1417
    .local v11, "downScaleY":I
    if-ge v10, v11, :cond_14

    move v9, v10

    .line 1418
    .local v9, "downSample":I
    :goto_c
    const/4 v2, 0x1

    if-ge v9, v2, :cond_13

    const/4 v9, 0x1

    .line 1426
    :cond_13
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1427
    .local v20, "photoInputStream2":Ljava/io/InputStream;
    if-eqz v20, :cond_1d

    .line 1428
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1429
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1430
    move-object/from16 v0, v18

    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1431
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1432
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1433
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1434
    const/16 v20, 0x0

    .line 1438
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_d
    const-wide/high16 v33, 0x3ff0000000000000L

    cmpl-double v2, v22, v33

    if-lez v2, :cond_15

    .line 1441
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v6, v0

    .line 1442
    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v7, v0

    .line 1451
    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    :goto_e
    if-eqz v3, :cond_4

    .line 1452
    :try_start_4
    div-int v2, v16, v9

    sub-int/2addr v2, v7

    div-int/lit8 v5, v2, 0x3

    .line 1453
    .restart local v5    # "offsetY":I
    if-ltz v5, :cond_16

    .line 1454
    :goto_f
    div-int v2, v17, v9

    sub-int/2addr v2, v6

    div-int/lit8 v4, v2, 0x2

    .line 1455
    .restart local v4    # "offsetX":I
    if-ltz v4, :cond_17

    :goto_10
    move-object/from16 v2, p0

    .line 1456
    invoke-static/range {v2 .. v7}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->cropImage(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    goto/16 :goto_9

    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v9    # "downSample":I
    .end local v20    # "photoInputStream2":Ljava/io/InputStream;
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :cond_14
    move v9, v11

    .line 1417
    goto :goto_c

    .line 1443
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v9    # "downSample":I
    .restart local v20    # "photoInputStream2":Ljava/io/InputStream;
    :cond_15
    const-wide/high16 v33, 0x3ff0000000000000L

    cmpg-double v2, v22, v33

    if-gez v2, :cond_1c

    const-wide/16 v33, 0x0

    cmpl-double v2, v22, v33

    if-lez v2, :cond_1c

    .line 1446
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v6, v0

    .line 1447
    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v33, v33, v22

    move-wide/from16 v0, v33

    double-to-int v7, v0

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    goto :goto_e

    .line 1453
    .restart local v5    # "offsetY":I
    :cond_16
    const/4 v5, 0x0

    goto :goto_f

    .line 1455
    .restart local v4    # "offsetX":I
    :cond_17
    const/4 v4, 0x0

    goto :goto_10

    .line 1461
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v9    # "downSample":I
    .end local v10    # "downScaleX":I
    .end local v11    # "downScaleY":I
    .end local v20    # "photoInputStream2":Ljava/io/InputStream;
    .end local v22    # "scale":D
    .end local v24    # "scaleX":D
    .end local v26    # "scaleY":D
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_0
    move-exception v12

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move-object/from16 v3, v21

    .line 1463
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    :goto_11
    :try_start_5
    const-string v2, "BlurContactsExt"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1470
    if-eqz v8, :cond_5

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 1465
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_1
    move-exception v12

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move-object/from16 v3, v21

    .line 1466
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .local v12, "e":Ljava/io/IOException;
    :goto_12
    :try_start_6
    const-string v2, "BlurContactsExt"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1470
    if-eqz v8, :cond_5

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 1467
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_2
    move-exception v13

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move-object/from16 v3, v21

    .line 1468
    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .local v13, "e1":Ljava/lang/IllegalStateException;
    :goto_13
    :try_start_7
    const-string v2, "BlurContactsExt"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1470
    if-eqz v8, :cond_5

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 1470
    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v13    # "e1":Ljava/lang/IllegalStateException;
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catchall_0
    move-exception v2

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move-object/from16 v3, v21

    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    :goto_14
    if-eqz v8, :cond_18

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v2

    .line 1481
    :cond_19
    if-lez p4, :cond_1b

    .line 1482
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 1483
    .local v14, "greyMan":Landroid/graphics/Bitmap;
    if-nez v14, :cond_1a

    .line 1484
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p4

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1486
    sget-object v2, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-object v3, v14

    .line 1489
    goto/16 :goto_b

    .line 1493
    .end local v14    # "greyMan":Landroid/graphics/Bitmap;
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 1470
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .restart local v22    # "scale":D
    .restart local v24    # "scaleX":D
    .restart local v26    # "scaleY":D
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catchall_1
    move-exception v2

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    goto :goto_14

    .end local v22    # "scale":D
    .end local v24    # "scaleX":D
    .end local v26    # "scaleY":D
    :catchall_2
    move-exception v2

    goto :goto_14

    .line 1467
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .restart local v22    # "scale":D
    .restart local v24    # "scaleX":D
    .restart local v26    # "scaleY":D
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_3
    move-exception v13

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    goto :goto_13

    .restart local v9    # "downSample":I
    .restart local v10    # "downScaleX":I
    .restart local v11    # "downScaleY":I
    .restart local v20    # "photoInputStream2":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    goto :goto_13

    .line 1465
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v9    # "downSample":I
    .end local v10    # "downScaleX":I
    .end local v11    # "downScaleY":I
    .end local v20    # "photoInputStream2":Ljava/io/InputStream;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_5
    move-exception v12

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    goto/16 :goto_12

    .restart local v9    # "downSample":I
    .restart local v10    # "downScaleX":I
    .restart local v11    # "downScaleY":I
    .restart local v20    # "photoInputStream2":Ljava/io/InputStream;
    :catch_6
    move-exception v12

    goto/16 :goto_12

    .line 1461
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .end local v9    # "downSample":I
    .end local v10    # "downScaleX":I
    .end local v11    # "downScaleY":I
    .end local v20    # "photoInputStream2":Ljava/io/InputStream;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :catch_7
    move-exception v12

    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    goto/16 :goto_11

    .restart local v9    # "downSample":I
    .restart local v10    # "downScaleX":I
    .restart local v11    # "downScaleY":I
    .restart local v20    # "photoInputStream2":Ljava/io/InputStream;
    :catch_8
    move-exception v12

    goto/16 :goto_11

    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :cond_1c
    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    goto/16 :goto_e

    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v6    # "targetWidth":I
    .end local v7    # "targetHeight":I
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v31    # "targetHeight":I
    .restart local v32    # "targetWidth":I
    :cond_1d
    move-object/from16 v3, v21

    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_d

    .end local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    .end local v9    # "downSample":I
    .end local v10    # "downScaleX":I
    .end local v11    # "downScaleY":I
    .end local v20    # "photoInputStream2":Ljava/io/InputStream;
    .restart local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    :cond_1e
    move/from16 v7, v31

    .end local v31    # "targetHeight":I
    .restart local v7    # "targetHeight":I
    move/from16 v6, v32

    .end local v32    # "targetWidth":I
    .restart local v6    # "targetWidth":I
    move-object/from16 v3, v21

    .end local v21    # "rtnBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "rtnBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_9
.end method

.method private static loadDeviceContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "deviceSource"    # Ljava/lang/String;
    .param p3, "targetSize"    # Landroid/graphics/Rect;
    .param p4, "placeholderImageResource"    # I
    .param p5, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    const/4 v2, 0x0

    .line 1190
    if-nez p1, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-object v2

    .line 1194
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1196
    .local v7, "match":I
    const/16 v0, 0x64

    if-ne v7, v0, :cond_2

    .line 1197
    invoke-static {p0, p1, p3, p4, p5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadRawContactPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1199
    :cond_2
    const/16 v0, 0xc8

    if-ne v7, v0, :cond_3

    .line 1200
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_DEVICE_BY_NAME:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1203
    .local v1, "photoAlgorithmUri":Landroid/net/Uri;
    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1206
    .end local v1    # "photoAlgorithmUri":Landroid/net/Uri;
    :cond_3
    if-lez p4, :cond_0

    .line 1207
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1208
    .local v6, "greyMan":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 1209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1211
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v6

    .line 1213
    goto :goto_0
.end method

.method public static loadRawContactPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactUri"    # Landroid/net/Uri;
    .param p2, "targetSize"    # Landroid/graphics/Rect;
    .param p3, "placeHolderImage"    # I
    .param p4, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    .line 1305
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1306
    .local v6, "rawContactId":J
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_RAW_CONTACT_PHOTO:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static loadSocialNetworkContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "socialNetwork"    # Ljava/lang/String;
    .param p3, "targetSize"    # Landroid/graphics/Rect;
    .param p4, "placeholderImageResource"    # I
    .param p5, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    const/4 v2, 0x0

    .line 1223
    if-nez p1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-object v2

    .line 1227
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1228
    .local v7, "match":I
    const/16 v0, 0x64

    if-ne v7, v0, :cond_2

    .line 1229
    invoke-static {p0, p1, p3, p4, p5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadRawContactPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1231
    :cond_2
    const/16 v0, 0xc8

    if-ne v7, v0, :cond_3

    .line 1232
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_NAME:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1236
    .local v1, "photoAlgorithmUri":Landroid/net/Uri;
    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1239
    .end local v1    # "photoAlgorithmUri":Landroid/net/Uri;
    :cond_3
    if-lez p4, :cond_0

    .line 1240
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1241
    .local v6, "greyMan":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 1242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1244
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sGreyManCache:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v6

    .line 1246
    goto :goto_0
.end method

.method private static loadSocialNetworkContactPhotoAccount(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "accountId"    # J
    .param p4, "targetSize"    # Landroid/graphics/Rect;
    .param p5, "placeholderImageResource"    # I
    .param p6, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    const/4 v2, 0x0

    .line 1256
    if-nez p1, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-object v2

    .line 1260
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1261
    .local v6, "match":I
    const/16 v0, 0x64

    if-ne v6, v0, :cond_2

    .line 1262
    invoke-static {p0, p1, p4, p5, p6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadRawContactPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1264
    :cond_2
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_0

    .line 1265
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1269
    .local v1, "photoAlgorithmUri":Landroid/net/Uri;
    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static loadSocialNetworkContactPhotoProvider(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "socialNetworkProviderId"    # J
    .param p4, "targetSize"    # Landroid/graphics/Rect;
    .param p5, "placeholderImageResource"    # I
    .param p6, "imageDecoder"    # Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;

    .prologue
    const/4 v2, 0x0

    .line 1279
    if-nez p1, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-object v2

    .line 1283
    :cond_1
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1284
    .local v6, "match":I
    const/16 v0, 0x64

    if-ne v6, v0, :cond_2

    .line 1285
    invoke-static {p0, p1, p4, p5, p6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadRawContactPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1287
    :cond_2
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_0

    .line 1288
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->CONTENT_DIR_SOCIAL_NETWORK_BY_PROVIDER:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1292
    .local v1, "photoAlgorithmUri":Landroid/net/Uri;
    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method
