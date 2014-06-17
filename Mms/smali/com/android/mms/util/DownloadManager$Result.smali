.class public final enum Lcom/android/mms/util/DownloadManager$Result;
.super Ljava/lang/Enum;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/DownloadManager$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/DownloadManager$Result;

.field public static final enum EXPIRED:Lcom/android/mms/util/DownloadManager$Result;

.field public static final enum LOAD_FAILURE:Lcom/android/mms/util/DownloadManager$Result;

.field public static final enum SUCCESS:Lcom/android/mms/util/DownloadManager$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/android/mms/util/DownloadManager$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/DownloadManager$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/DownloadManager$Result;->SUCCESS:Lcom/android/mms/util/DownloadManager$Result;

    .line 67
    new-instance v0, Lcom/android/mms/util/DownloadManager$Result;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/DownloadManager$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/DownloadManager$Result;->EXPIRED:Lcom/android/mms/util/DownloadManager$Result;

    .line 70
    new-instance v0, Lcom/android/mms/util/DownloadManager$Result;

    const-string v1, "LOAD_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/util/DownloadManager$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/DownloadManager$Result;->LOAD_FAILURE:Lcom/android/mms/util/DownloadManager$Result;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/util/DownloadManager$Result;

    sget-object v1, Lcom/android/mms/util/DownloadManager$Result;->SUCCESS:Lcom/android/mms/util/DownloadManager$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/util/DownloadManager$Result;->EXPIRED:Lcom/android/mms/util/DownloadManager$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/DownloadManager$Result;->LOAD_FAILURE:Lcom/android/mms/util/DownloadManager$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/DownloadManager$Result;->$VALUES:[Lcom/android/mms/util/DownloadManager$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/DownloadManager$Result;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/mms/util/DownloadManager$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/DownloadManager$Result;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/DownloadManager$Result;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/mms/util/DownloadManager$Result;->$VALUES:[Lcom/android/mms/util/DownloadManager$Result;

    invoke-virtual {v0}, [Lcom/android/mms/util/DownloadManager$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/DownloadManager$Result;

    return-object v0
.end method
