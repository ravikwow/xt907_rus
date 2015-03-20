.class public final enum Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;
.super Ljava/lang/Enum;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SNData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

.field public static final enum NONE:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

.field public static final enum SN_ACCOUNT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

.field public static final enum SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

.field public static final enum SN_PROVIDER:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 935
    new-instance v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->NONE:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    new-instance v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    const-string v1, "SN_NAME"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    new-instance v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    const-string v1, "SN_PROVIDER"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_PROVIDER:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    new-instance v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    const-string v1, "SN_ACCOUNT"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_ACCOUNT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    .line 934
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    sget-object v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->NONE:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_NAME:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_PROVIDER:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->SN_ACCOUNT:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->$VALUES:[Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

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
    .line 934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 934
    const-class v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;
    .locals 1

    .prologue
    .line 934
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;->$VALUES:[Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext$SNData;

    return-object v0
.end method
