/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************/

public enum CPU {
    /// CPUs count available for the process
    public static var count: Int {
        let result = sysconf(_SC_NPROCESSORS_ONLN)
        guard result != -1 else { return 0 }
        return result
    }

    /// CPUs count configured in the system
    public static var totalCount: Int {
        let result = sysconf(_SC_NPROCESSORS_CONF)
        guard result != -1 else { return 0 }
        return result
    }
}
